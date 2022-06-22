import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();

  @override
  void dispose() {
    //*medoto descarta os controladores, precisa descartar para liberar memoria
    nameEC.dispose();
    super.dispose();
  }

  //String texto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // TextField(
              //   onChanged: (String value) {
              //     setState(() {
              //       texto = value;
              //     });
              //   },
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              // Text('Texto Digitado $texto'),

              //*Montando o Formulário

              TextFormField(
                  controller: nameEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                    return null;
                  }),

              TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo Y não preenchido';
                    }
                    return null;
                  }),

              ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    var message = 'Formulário Inválido';
                    if (formValid) {
                      message = 'Formulario Valido (Name: ${nameEC.text})';
                    }

                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(message)));
                  },
                  child: Text('Salvar')),
            ],
          ),
        ),
      ),
    );
  }
}
