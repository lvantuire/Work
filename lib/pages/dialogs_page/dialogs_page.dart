import 'package:flutter/material.dart';
import 'package:primeiro_projeto/pages/dialogs_page/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    //? barrierDismissible: false, BLOQUEIA A SAIDA DO DIALOG CLICANCO FORA
                    context: context,
                    builder: (context) {
                      return DialogCustom();
                    },
                  );
                },
                child: Text('Dialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: Text('Simple Dialog'),
                        contentPadding: EdgeInsets.all(10),
                        children: [
                          Text('Simple Dialog'),
                        ],
                      );
                    },
                  );
                },
                child: Text('SimpleDialog')),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Text('TituloAlert'))
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(onPressed: () {}, child: Text('Cancelar')),
                          TextButton(
                              onPressed: () {}, child: Text('Confirmar')),
                        ],
                      );
                    },
                  );
                },
                child: Text('Alert Dialog')),
            ElevatedButton(onPressed: () {}, child: Text('Time Picker')),
            ElevatedButton(onPressed: () {}, child: Text('Date Picker')),
          ],
        ),
      ),
    );
  }
}
