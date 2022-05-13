import 'package:flutter/material.dart';

class FormsPageDecor extends StatefulWidget {
  @override
  State<FormsPageDecor> createState() => _FormsPageStateDecor();
}

class _FormsPageStateDecor extends State<FormsPageDecor> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final senhaEC = TextEditingController();

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
                    //labelStyle: TextStyle(
                    //fontSize: 10,
                    //color: Colors.orange,
                    //    ),
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

                SizedBox(
                  height: 10,
                ),

                //Exemplo de campo para senha
                TextFormField(
                  controller: senhaEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: 1, //? COLOCA NULL PARA IR BAIXANDO AS LINHAS
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    //labelStyle: TextStyle(
                    //fontSize: 10,
                    //color: Colors.orange,
                    //    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),

                SizedBox(
                  height: 20,
                ),

                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Opções a escolher',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  elevation: 10,
                  //icon: Icon(Icons.drag_indicator_sharp),
                  // value: 'cat1', // Já deixa como um valor padrão preenchido
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'necessaria uma categoria';
                    }
                  },
                  onChanged: (String? newValue) {},
                  items: [
                    DropdownMenuItem(
                      value: 'cat1',
                      child: Text('Texto1'),
                    ),
                    DropdownMenuItem(
                      value: 'cat2',
                      child: Text('Texto2'),
                    ),
                    DropdownMenuItem(
                      value: 'cat3',
                      child: Text('Texto3'),
                    ),
                    DropdownMenuItem(
                      value: 'cat4',
                      child: Text('Texto4'),
                    ),
                    DropdownMenuItem(
                      value: 'cat5',
                      child: Text('Texto5'),
                    ),
                  ],
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
