import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StackPage'),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
            width: 300,
            height: 300,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.pink,
              width: 150,
              height: 150,
            ),
          ),
          Positioned(
            // cuidado com esse
            top: 40,
            right: 40,
            child: Container(
              color: Colors.tealAccent,
              width: 150,
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}
