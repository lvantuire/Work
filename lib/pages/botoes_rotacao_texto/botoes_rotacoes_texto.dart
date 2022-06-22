// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

//import 'dart:ui';

import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                RotatedBox(
                  quarterTurns: -1,
                  child: Container(
                      color: Colors.red,
                      padding: EdgeInsets.all(10),
                      child: Text('Luiz Vantuir')),
                ),
                Icon(Icons.whatsapp_sharp),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: Text('Salvar'),
              style: TextButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.all(10),
                minimumSize:
                    Size(10, 10), // sempre vai pegar o mínimo necessário
                // respeitando o limite dado no padding
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.exit_to_app),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Aperta Aqui'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shadowColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10), // caixa vazia para dar espaçamento
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.ramen_dining),
              label: Text('Naruto'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(100, 70),
                primary: Colors.yellowAccent,
                shadowColor: Colors.pink,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text('Another One Button'),
              style: ButtonStyle(
                  shadowColor: MaterialStateProperty.all(Colors.blue),
                  minimumSize: MaterialStateProperty.all(Size(100, 70)),
                  backgroundColor: MaterialStateProperty.resolveWith((states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.black;
                    } else if (states.contains(MaterialState.hovered)) {
                      return Colors.pinkAccent;
                    }
                    return Colors.red;
                  })),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {},
              child: Text('Inkwell'),
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Text('Gesture Detector'),
              onTap: () => print('Gesture Clicado'),
              onVerticalDragStart: (_) => print('Start $_'),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                  gradient: (LinearGradient(
                    colors: [Colors.blue, Colors.green],
                  )),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: Offset(0, 5),
                        color: Colors.red),
                  ]),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: Center(
                  child: Text(
                    'Botão Container',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
