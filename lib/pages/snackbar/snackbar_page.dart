import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  SnackbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                    content: Text('Dados Enviados'),
                    backgroundColor: Colors.pink,
                  );

                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text('Simple Snack Bar')),
            ElevatedButton(
                onPressed: () {
                  final snackBar = SnackBar(
                      content: Text('Dados Enviados'),
                      backgroundColor: Colors.purple,
                      action: SnackBarAction(
                          label: 'Desfazer',
                          onPressed: () {
                            print('Clicado!!!!');
                          }));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);

//*          ScaffoldMessenger.of(context).removeCurrentSnackBar();     Para Remover uma SnackBar
                },
                child: Text('Action Snack Bar')),
          ],
        ),
      ),
    );
  }
}
