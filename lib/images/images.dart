//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Nossa priemira APP Bar',
          style: TextStyle(fontFamily: 'Tourney'),
        ),
      ),
      drawer: Drawer(
        child: Center(child: Text('Drawer Aberto')),
      ),
      body: Center(
        child: Column(children: [
          Container(
            width: 300,
            height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/medicos.jpg'), fit: BoxFit.cover),
            ),
            //color: Colors.yellow,
            child: Center(
              child: Text(
                'Médicos',
                style: TextStyle(
                  backgroundColor: Colors.white.withOpacity(0.5),
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.orange,
          ),
          // child: Image.network(
          //     'https://storage.googleapis.com/cms-storage-bucket/70760bf1e88b184bb1bc.png',
          //     fit: BoxFit.fill)),
        ]),
      ),
    );
  }
}
