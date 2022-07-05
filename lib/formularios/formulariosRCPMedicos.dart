import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class FormularioRPCMedicosPage extends StatefulWidget {
  @override
  State<FormularioRPCMedicosPage> createState() => _FormularioRPCMedicosPage();
}

class _FormularioRPCMedicosPage extends State<FormularioRPCMedicosPage> {
  final formKey = GlobalKey<FormState>();
  final atividadeEC = TextEditingController();
  final nomeEC = TextEditingController();
  final cpfEC = TextEditingController();
  final enderecoEC = TextEditingController();
  final numeroEC = TextEditingController();
  final complementoEC = TextEditingController();
  final bairroEC = TextEditingController();
  final cidadeEC = TextEditingController();
  final cepEC = TextEditingController();
  final telefoneEC = TextEditingController();
  final emailEC = TextEditingController();
  final melhorEC = TextEditingController();
  final faturamentoAnualEC = TextEditingController();
  final coberturaEC = TextEditingController();
  final reclamaEC = TextEditingController();
  final falhareclamaEC = TextEditingController();
  final procedadmEC = TextEditingController();
  final esteticaEC = TextEditingController();
  final cirurgiaEC = TextEditingController();

  enviaFormMedicos() async {
    final atividadeForm = atividadeEC.text.toString();
    final nomeForm = nomeEC.text.toString();
    final cpfForm = cpfEC.text.toString();
    final enderecoForm = enderecoEC.text.toString();
    final numeroForm = numeroEC.text.toString();
    final complementoForm = complementoEC.text.toString();
    final bairroForm = bairroEC.text.toString();
    final cidadeForm = cidadeEC.text.toString();
    final cepForm = cepEC.text.toString();
    final telefoneForm = telefoneEC.text.toString();
    final emailForm = emailEC.text.toString();
    final melhorForm = melhorEC.text.toString();
    final faturamentoAnualForm = faturamentoAnualEC.text.toString();
    final coberturaForm = coberturaEC.text.toString();
    final reclamaForm = reclamaEC.text.toString();
    final falhareclamaForm = falhareclamaEC.text.toString();
    final procedadmForm = procedadmEC.text.toString();
    final esteticaForm = esteticaEC.text.toString();
    final cirurgiaForm = cirurgiaEC.text.toString();

    {
      final email = 'cotacoes@yandex.com';
      final password = 'xwhlsvueiveafqyp';
      final nome = 'Cotacoes Gale';

      final smtpServer = yandex(email, password);
      print('carregou dados do smtpServer');

      final message = Message()
        ..from = Address(email, nome)
        ..recipients = ['lvantuire@gmail.com']
        ..subject = "Pedido de cotação de seguro RCP Médicos para $nomeForm "
        ..text =
            "\nAtividade: $atividadeForm  \nCPF: $cpfForm  \nNome: $nomeForm  \nEndereço: $enderecoForm  \nNumero: $numeroForm  \nComplemento: $complementoForm  \nBairro: $bairroForm  \nCidade: $cidadeForm  \nCEP: $cepForm  \nTelefone: $telefoneForm  \nE-mail: $emailForm  \nMelhor Horario de Contato: $melhorForm  \nFaturamento: $faturamentoAnualForm  \nCobertura: $coberturaForm  \n\n O proponente tem conhecimento de alguma Reclamação ocorrida por falha na prestação dos serviços profissionais contra si ou contra qualquer de seus Sócios ou colaboradores?: \n Resposta: $reclamaForm  \nO proponente tem conhecimento de algum fato que POSSA GERAR uma Reclamação por falha na prestação dos serviços profissionais contra si ou contra qualquer de seus sócios ou colaboradores? \n Resposta: $falhareclamaForm  \nO proponente tem conhecimento de algum procedimento administrativo contra si ou contra qualquer de seus Sócios ou colaboradores? \nResposta: $procedadmForm  \nO proponente realiza procedimentos estéticos? Se sim, justifique. \n Resposta: $esteticaForm  \nEspecificamente no caso de Clinicas Médicas, o proponente realiza procedimentos cirúrgicos? \n Resposta $cirurgiaForm";

      print('carregou dados da mensagem vai tentar mandar agora pelo send');

      try {
        await send(message, smtpServer);
        print('email enviado'); // fazer pop do formulario
      } on MailerException catch (e) {
        print(e);
      }
    }
  }

  //   final Uri params = Uri(
  //     scheme: 'mailto',
  //     path: 'contato@galeseguros.com.br',
  //     query:
  //         'subject=Contato inicial Cotacao Seguros para $nomeForm &body= $nomeForm, $emailForm, $telefoneForm, $melhorForm, $detalhesForm ',
  //   );
  //   String url = params.toString();
  //   if (await canLaunchUrlString(url)) {
  //     await launchUrlString(url);
  //   } else {
  //     print('Could not launch $url');
  //   }
  // }

  // @override
  // void dispose() {
  //   //*medoto descarta os controladores, precisa descartar para liberar memoria
  //   nameEC.dispose();
  //   super.dispose();
  // }

  //String texto = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pedido Cotação RCP Médicos'),
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

                MontaCampoText(controlador: atividadeEC, titulo: 'Atividade'),
                SizedBox(height: 10),

                MontaCampoText(
                    controlador: nomeEC, titulo: 'Nome / Razão Social'),
                SizedBox(
                  height: 10,
                ),

                MontaCampoText(controlador: cpfEC, titulo: 'CPF/CNPJ'),
                SizedBox(
                  height: 10,
                ),

                MontaCampoText(controlador: enderecoEC, titulo: 'Endereço'),
                SizedBox(
                  height: 10,
                ),
                MontaCampoText(controlador: numeroEC, titulo: 'Número'),
                SizedBox(
                  height: 10,
                ),
                MontaCampoText(
                    controlador: complementoEC, titulo: 'Complemento'),
                SizedBox(
                  height: 10,
                ),
                MontaCampoText(controlador: bairroEC, titulo: 'Bairro'),
                SizedBox(
                  height: 10,
                ),
                MontaCampoText(controlador: cidadeEC, titulo: 'Cidade e UF'),
                SizedBox(
                  height: 10,
                ),
                MontaCampoText(controlador: cepEC, titulo: 'CEP'),
                SizedBox(
                  height: 10,
                ),
                MontaCampoText(
                    controlador: telefoneEC, titulo: 'Telefone com DDD'),
                SizedBox(
                  height: 10,
                ),
                MontaCampoText(controlador: emailEC, titulo: 'e-mail'),
                SizedBox(
                  height: 10,
                ),
                MontaCampoText(controlador: enderecoEC, titulo: 'Endereço'),
                SizedBox(
                  height: 10,
                ),

                MontaCampoText(
                    controlador: faturamentoAnualEC,
                    titulo: 'Faturamento Anual'),
                SizedBox(
                  height: 10,
                ),
                MontaCampoText(
                    controlador: coberturaEC,
                    titulo: 'Valor de Cobertura 100k a 5mm'),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'O proponente tem conhecimento de alguma Reclamação ocorrida por falha na prestação dos serviços profissionais contra si ou contra qualquer de seus Sócios ou colaboradores? Se sim, justifique'),
                MontaCampoText(
                    controlador: reclamaEC, titulo: 'Sim/Não, Justifique'),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'O proponente tem conhecimento de algum fato que POSSA GERAR uma Reclamação por falha na prestação dos serviços profissionais contra si ou contra qualquer de seus sócios ou colaboradores? Se sim, justifique.'),
                MontaCampoText(
                    controlador: falhareclamaEC, titulo: 'Sim/Não, Justifique'),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'O proponente tem conhecimento de algum procedimento administrativo contra si ou contra qualquer de seus Sócios ou colaboradores? Se sim, justifique'),
                MontaCampoText(
                    controlador: procedadmEC, titulo: 'Sim/Não, Justifique'),
                SizedBox(
                  height: 10,
                ),
                MontaCampoText(
                    controlador: esteticaEC,
                    titulo:
                        'O proponente realiza procedimentos estéticos? Se sim, justifique.'),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'Especificamente no caso de Clinicas Médicas, o proponente realiza procedimentos cirúrgicos? Se sim, justifique.'),
                MontaCampoText(
                    controlador: cirurgiaEC, titulo: 'Sim/Não, justifique'),
                SizedBox(
                  height: 10,
                ),

                MontaCampoText(
                    controlador: melhorEC, titulo: 'Melhor Horario de Contato'),
                SizedBox(
                  height: 10,
                ),

                ElevatedButton(
                    onPressed: () {
                      var formValid = formKey.currentState?.validate() ?? false;
                      var message = 'Formulário Invalido';
                      if (formValid) {
                        enviaFormMedicos();
                        message = 'Formulario Enviado (Name: ${nomeEC.text})';
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

MontaCampoText({TextEditingController? controlador, String? titulo}) {
  return TextFormField(
      controller: controlador,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      maxLines: null, //? COLOCA NULL PARA IR BAIXANDO AS LINHAS
      decoration: InputDecoration(
        labelText: titulo,
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
        return null;
      });
}
