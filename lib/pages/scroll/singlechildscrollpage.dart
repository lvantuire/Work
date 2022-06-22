import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

class SingleChildScrollPage extends StatelessWidget {
  const SingleChildScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single Child Scroll Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.pink,
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: Colors.amber,
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: Colors.blue,
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: Colors.green,
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
            Container(
              color: Colors.red,
              height: 200,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),
    );
  }
}
