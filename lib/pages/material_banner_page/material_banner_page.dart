import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  MaterialBannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material Banner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Material Banner'),
              onPressed: () {
                final materialBanner = MaterialBanner(
                  content: Text('Dados Enviados MaterialBAnner'),
                  backgroundColor: Colors.lightBlue,
                  forceActionsBelow: true,
                  actions: [
                    TextButton(
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .hideCurrentMaterialBanner();
                        },
                        child: Text('Cancelar'))
                  ],
                );

                ScaffoldMessenger.of(context)
                    .showMaterialBanner(materialBanner);
              },
            ),
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
