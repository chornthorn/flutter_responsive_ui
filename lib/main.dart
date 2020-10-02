import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:thorn_ecommerce_ui/screens/home.dart';

void main() => runApp(
      DevicePreview(
        enabled: true,
        builder: (_) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      title: 'Flutter Demo',
      home: HomeView(),
    );
  }
}
