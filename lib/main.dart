//import 'package:flutter/foundation.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
//import 'package:primeiro_projeto/formulario/formulario.dart';
import 'package:primeiro_projeto/home/home_alternativo.dart';
//import 'package:primeiro_projeto/images/images.dart';
//import 'package:primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacoes_texto.dart';
//import 'package:primeiro_projeto/pages/contanier/container_page.dart';
// import 'package:primeiro_projeto/home/home_page.dart';
// import 'package:primeiro_projeto/pages/forms/forms_page.dart';
// import 'package:primeiro_projeto/pages/forms/forms_page2.dart';
// import 'package:primeiro_projeto/pages/galeseguros/galeseguros.dart';
// import 'package:primeiro_projeto/pages/mediaquery/mediaquery.dart';
// import 'package:primeiro_projeto/pages/rows_columns/rows_columns_page.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:primeiro_projeto/pages/snackbar/snackbar_page.dart';
// import 'package:primeiro_projeto/pages/stack/stack_page.dart';
// import 'package:primeiro_projeto/pages/stack/stack_page2.dart';
// import 'pages/layout_builder/layout_builder_page.dart';
// import 'pages/scroll/listview.dart';
// import 'pages/scroll/singlechildscrollpage.dart';

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
      darkTheme: ThemeData.dark(),
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
