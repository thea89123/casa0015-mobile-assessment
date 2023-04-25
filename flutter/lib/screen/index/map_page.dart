import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl:
            'https://openweathermap.org/weathermap?basemap=map&cities=true&layer=temperature&lat=50.5413&lon=5.6470&zoom=6',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (controller) {
          controller.loadUrl(
              'https://openweathermap.org/weathermap?basemap=map&cities=true&layer=temperature&lat=50.5413&lon=5.6470&zoom=6');
          controller.canGoBack().then((value) => debugPrint(value.toString()));
          controller.canGoForward().then((value) => debugPrint(value.toString()));
          controller.currentUrl().then((value) => debugPrint(value.toString()));
        },
        onPageFinished: (url) {
          debugPrint("onPageFinished:$url");
        },
      ),
    );
  }
}
