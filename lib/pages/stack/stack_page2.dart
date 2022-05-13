import 'package:flutter/material.dart';

class StackPage2 extends StatelessWidget {
  const StackPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack2'),
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/esqueleto.jpg'), fit: BoxFit.cover),
          ),
        ),
        Container(
          color: Colors.white54, //transparencia do Branco
        ),
        Positioned(
          bottom: 48,
          left: 10,
          right: 10,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 8,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text('Esqueleto',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                      'O esqueleto humano é uma estrutura formada por vários ossos e cartilagens, que permitem, entre várias outras funções, a movimentação do nosso corpo. O esqueleto humano é um tipo de endoesqueleto, uma vez que se encontra no interior do nosso corpo, sendo formado por mais de 200 ossos Veja mais'),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
