import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class FormularioPage extends StatefulWidget {
  @override
  State<FormularioPage> createState() => _FormularioPage();
}

class _FormularioPage extends State<FormularioPage> {
  final formKey = GlobalKey<FormState>();
  final nameEC = TextEditingController();
  final emailEC = TextEditingController();
  final telefoneEC = TextEditingController();
  final detalhesEC = TextEditingController();
  final melhorEC = TextEditingController();

  enviaForm() async {
    final nomeForm = nameEC.text.toString();
    final emailForm = emailEC.text.toString();
    final telefoneForm = telefoneEC.text.toString();
    final melhorForm = melhorEC.text.toString();
    final detalhesForm = detalhesEC.text.toString();

    final Uri params = Uri(
      scheme: 'mailto',
      path: 'contato@galeseguros.com.br',
      query:
          'subject=Contato inicial Cotacao Seguros para $nomeForm &body= $nomeForm, $emailForm, $telefoneForm, $melhorForm, $detalhesForm ',
    );
    String url = params.toString();
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

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
        title: Text('Formulário de Contato'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(width: 20),
                    Container(
                      height: 180,
                      width: 70,
                      //color: Colors.amber,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/NovoSanto.png'),
                            fit: BoxFit.fitHeight),
                      ),
                    ),
                    Container(
                      height: 160,
                      width: 240,
                      //color: Colors.amberAccent,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Fale com a gente',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Complete os campos abaixo que um de nossos especialistas entrará em contato com a melhor solução para sua necessidade.',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          // Text(
                          //   '16-3032-3704',
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //   ),
                          // ),
                          // Text(
                          //   '011-98983-6080',
                          //   style: TextStyle(
                          //     fontSize: 20,
                          //   ),
                          // ),
                          // Text('Seja atendido por um Especialista!!!'),
                          Text(
                            'Se seu Santo falhar!',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'A Gale Pode Ajudar',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
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
                  //cursorHeight: 10,
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
                  controller: emailEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: 1, //? COLOCA NULL PARA IR BAIXANDO AS LINHAS
                  decoration: InputDecoration(
                    labelText: 'e-mail',
                    //labelStyle: TextStyle(
                    //fontSize: 10,
                    //color: Colors.orange,
                    //    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  //obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                TextFormField(
                  controller: telefoneEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: 1, //? COLOCA NULL PARA IR BAIXANDO AS LINHAS
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    //labelStyle: TextStyle(
                    //fontSize: 10,
                    //color: Colors.orange,
                    //    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  //obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),

                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: melhorEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: 1, //? COLOCA NULL PARA IR BAIXANDO AS LINHAS
                  decoration: InputDecoration(
                    labelText: 'Melhor Horario de Contato',
                    //labelStyle: TextStyle(
                    //fontSize: 10,
                    //color: Colors.orange,
                    //    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  //obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                TextFormField(
                  controller: detalhesEC,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: null, //? COLOCA NULL PARA IR BAIXANDO AS LINHAS
                  decoration: InputDecoration(
                    labelText: 'Fale mais sobre sua necessidade ',
                    //labelStyle: TextStyle(
                    //fontSize: 10,
                    //color: Colors.orange,
                    //    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  //obscureText: true,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo X não preenchido';
                    }
                  },
                ),

                SizedBox(
                  height: 10,
                ),

                ElevatedButton(
                    onPressed: () {
                      var formValid = formKey.currentState?.validate() ?? false;
                      var message = 'Formulário Inválido';
                      if (formValid) {
                        enviaForm();
                        message = 'Formulario Valido (Name: ${nameEC.text})';
                      }

                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(message)));
                    },
                    child: Text('     E n v i a r     ')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
