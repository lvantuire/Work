import 'package:flutter/material.dart';

class FormsPageDecor extends StatefulWidget {
  @override
  State<FormsPageDecor> createState() => _FormsPageStateDecor();
}

class _FormsPageStateDecor extends State<FormsPageDecor> {
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
        title: Text('Forms Decor'),
      ),
      body: SingleChildScrollView(
        child: Form(
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
                  maxLines: null, //? COLOCA NULL PARA IR BAIXANDO AS LINHAS
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),

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
      ),
    );
  }
}
