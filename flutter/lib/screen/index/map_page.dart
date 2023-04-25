import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> with AutomaticKeepAliveClientMixin{
  @override
  Widget build(BuildContext context) {
    super.build(context);
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

  @override
  bool get wantKeepAlive => true;
}
