import 'package:flutter/material.dart';

class RowsColumnPage extends StatelessWidget {
  const RowsColumnPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rows & Columns')),
      body: Container(
        width: 350,
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Colors.amber,
              child: Text('Elemento1'),
            ),
            Text('Elemento2'),
            Text('Elemento3'),
            Container(
              color: Colors.purpleAccent,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('1'),
                  const Text('2'),
                  const Text('3'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
