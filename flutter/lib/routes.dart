import 'package:evapp/screen/firebase/email_verification_screen.dart';
import 'package:evapp/screen/home/home_page.dart';
import 'package:evapp/screen/index/index_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart' hide EmailAuthProvider;
import 'package:firebase_ui_auth/firebase_ui_auth.dart' hide EmailVerificationScreen;
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Routes {
  static const String login = 'login';
  static const String verifyEmail = 'verifyEmail';
  static const String home = 'home';
  static const String weather = 'weather';
}

final GoRouter router = GoRouter(
  redirect: (context, state) {
    if (FirebaseAuth.instance.currentUser == null) {
      return '/login';
    } else if (!FirebaseAuth.instance.currentUser!.emailVerified &&
        FirebaseAuth.instance.currentUser!.email != null) {
      return '/verifyEmail';
    } else {
      return null;
    }
  },
  routes: <RouteBase>[
    GoRoute(
      name: Routes.login,
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return SignInScreen(
          actions: [
            AuthStateChangeAction<SignedIn>((context, state) {
              if (!state.user!.emailVerified) {
                context.pushNamed(Routes.verifyEmail);
              } else {
                context.goNamed(Routes.home);
              }
            }),
            AuthStateChangeAction<UserCreated>((context, state) {
              if (!state.credential.user!.emailVerified) {
                context.pushNamed(Routes.verifyEmail);
              } else {
                context.goNamed(Routes.home);
              }
            }),
          ],
          styles: const {
            EmailFormStyle(signInButtonVariant: ButtonVariant.filled),
          },
          subtitleBuilder: (context, action) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                action == AuthAction.signIn ? 'Welcome to land' : 'Sign up for a new account',
              ),
            );
          },
        );
      },
    ),
    GoRoute(
      name: Routes.verifyEmail,
      path: '/verifyEmail',
      builder: (BuildContext context, GoRouterState state) {
        return EmailVerificationScreen(
          actions: [
            EmailVerifiedAction(() {
              context.goNamed(Routes.home);
            }),
            AuthCancelledAction((context) {
              FirebaseUIAuth.signOut(context: context).then((value) {
                context.pop();
              });
            }),
          ],
        );
      },
    ),
    GoRoute(
        name: Routes.home,
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const IndexPage();
        },
        routes: [
          GoRoute(
            name: Routes.weather,
            path: 'weather',
            builder: (BuildContext context, GoRouterState state) {
              return HomePage(data: state.extra as HomeRouteData);
            },
          ),
        ]),
  ],
);
