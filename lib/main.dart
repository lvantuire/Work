import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'package:primeiro_projeto/home/home_alternativo.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false, // !kReleaseMode
      builder: (_) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      //theme: ThemeData.light(),
      //darkTheme: ThemeData.dark(),
      title: 'Projeto Flutter Vantuir Gale',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      routes: {
        '/': (_) => HomePageAlternativa(),
      },
    );
  }
}
