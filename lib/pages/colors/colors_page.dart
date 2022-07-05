import 'package:flutter/material.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final cor = Colors.blue; //isso funciona para cores primarias
    //final cor = Colors.red.withOpacity(0.5); //transparencia
    //final cor = Colors.red.shade900; //intensidade
    //final cor = Color.fromRGBO(0, 0, 255, 1); //o ultimo é a transparencia
    final cor = Color(
        0XFF17599D); // para usar cor em exadecimal troca o # por 0XFF mais o n da cor

    //? Ver extensão do chrome ColorZila para Pick Colors da web

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cores'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 400,
          color: cor,
        ),
      ),
    );
  }
}
