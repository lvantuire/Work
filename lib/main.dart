import 'package:flutter/material.dart';
import 'package:primeiro_projeto/formulario/formulario.dart';
import 'package:primeiro_projeto/home/home_alternativo.dart';
import 'package:primeiro_projeto/images/images.dart';
import 'package:primeiro_projeto/pages/botoes_rotacao_texto/botoes_rotacoes_texto.dart';
import 'package:primeiro_projeto/pages/cidades/cidades_page.dart';
import 'package:primeiro_projeto/pages/circle_avatar/circle_avatar_page.dart';
import 'package:primeiro_projeto/pages/contanier/container_page.dart';
import 'package:primeiro_projeto/home/home_page.dart';
import 'package:primeiro_projeto/pages/dialogs_page/dialogs_page.dart';
import 'package:primeiro_projeto/pages/forms/forms_page.dart';
import 'package:primeiro_projeto/pages/forms/forms_page2.dart';
import 'package:primeiro_projeto/pages/galeseguros/galeseguros.dart';
import 'package:primeiro_projeto/pages/mediaquery/mediaquery.dart';
import 'package:primeiro_projeto/pages/rows_columns/rows_columns_page.dart';
import 'package:device_preview/device_preview.dart';
import 'package:primeiro_projeto/pages/sendemailsmtp/sendemailsmtp.dart';
import 'package:primeiro_projeto/pages/snackbar/snackbar_page.dart';
import 'package:primeiro_projeto/pages/stack/stack_page.dart';
import 'package:primeiro_projeto/pages/stack/stack_page2.dart';
import 'pages/bottom_navigator_bar/bottom_navigator_bar_page.dart';
import 'pages/layout_builder/layout_builder_page.dart';
import 'pages/scroll/listview.dart';
import 'pages/scroll/singlechildscrollpage.dart';

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
        '/': (_) => HomePage(),
        '/container': (_) => ContainerPage(),
        '/rows_columns': (_) => RowsColumnPage(),
        '/media_query': (_) => MediaQueryPage(),
        '/layout_builder': (_) => LayoutBuilderPage(),
        '/galeseguros': (_) => GaleSeguros(),
        '/image_page': (_) => ImagePage(),
        '/botoes_rotacao': (_) => BotoesRotacaoTextoPage(),
        '/single_scroll': (_) => SingleChildScrollPage(),
        '/list_view': (_) => ListViewPage(),
        '/home_alternativa': (_) => HomePageAlternativa(),
        '/formuario_page': (_) => FormularioPage(),
        '/snackbar_page': (_) => SnackbarPage(),
        '/forms_page': (_) => FormsPage(),
        '/forms_page_decor': (_) => FormsPageDecor(),
        '/stacks_page': (_) => StackPage(),
        '/stacks2': (_) => StackPage2(),
        '/cidades': (_) => CidadesPage(),
        '/dialogs': (_) => DialogsPage(),
        '/sendemailsmtp': (_) => Sendemailsmtp(),
        '/bottomnavigator': (_) => BottomNavigatorBarPage(),
        '/circleavatar': (_) => CircleAvatarPage(),
      },
    );
  }
}
