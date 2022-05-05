import 'package:flutter/material.dart';

class FormularioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page Formulário'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(""),
              Text('Nome'),
              Text('email'),
              Text('Telefone'),
            ],
          ),
        ));
  }
}
