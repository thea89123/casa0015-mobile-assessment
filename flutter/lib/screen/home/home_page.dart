import 'package:evapp/flutter_local_notifications.dart';
import 'package:evapp/routes.dart';
import 'package:evapp/screen/home/weather_api.dart';
import 'package:evapp/screen/home/weather_model_entity.dart';
import 'package:evapp/screen/home/weather_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_bg_null_safety/flutter_weather_bg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'widgets/forecast_weather.dart';
import 'widgets/real_time.dart';
import 'widgets/weather_alter.dart';
import 'widgets/weather_data.dart';

class HomeRouteData {
  final LatLng latLng;
  final String city;

  HomeRouteData(this.latLng, this.city);
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.data}) : super(key: key);

  final HomeRouteData data;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
  WeatherModelEntity? _curWeather;
  final GlobalKey<ScaffoldState> globalKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  Future getWeather() async {
    _curWeather = await getCurrentWeather(widget.data.latLng);
    if (_curWeather!.result?.alert?.content != null &&
        _curWeather!.result!.alert!.content!.isNotEmpty) {
      for (final alter in _curWeather!.result!.alert!.content!) {
        if (alter.description != null && alter.description!.isNotEmpty) {
          showNotification(alter.description!);
        }
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: globalKey,
      endDrawer: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width * 0.65,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                onTap: () async {
                  await FirebaseAuth.instance.signOut();
                  context.goNamed(Routes.login);
                },
                title: const Text(
                  'Sign out',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                trailing: const Icon(Icons.arrow_forward_ios),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(widget.data.city),
      ),
      body: Stack(
        children: [
          WeatherBg(
            weatherType:
                WeatherUtils.convertWeatherType(_curWeather?.result?.realtime?.skycon ?? ''),
            width: double.maxFinite,
            height: double.maxFinite,
          ),
          _curWeather == null
              ? const SizedBox.shrink()
              : SafeArea(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      await getWeather();
                    },
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Container(
                        margin: const EdgeInsets.only(top: 200),
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          children: [
                            RealtimeView(entity: _curWeather!),
                            WeatherData(entity: _curWeather!),
                            const SizedBox(height: 20),
                            DayForecastView(
                              resultDaily: _curWeather!.result?.daily,
                              entity: _curWeather!,
                            ),
                            const SizedBox(height: 20),
                            WeatherAlter(alert: _curWeather?.result?.alert),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
