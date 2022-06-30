import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class SendemailsmtpPage extends StatefulWidget {
  const SendemailsmtpPage({Key? key}) : super(key: key);

  @override
  State<SendemailsmtpPage> createState() => _SendemailsmtpStatePage();
}

class _SendemailsmtpStatePage extends State<SendemailsmtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SendEmailSMTP'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
            textStyle: TextStyle(fontSize: 24),
          ),
          child: Text('Send Email'),
          onPressed: sendEmail,
        ),
      ),
    );
  }
}

Future sendEmail() async {
  final email = 'cotacoes@yandex.com';
  final password = 'xwhlsvueiveafqyp';
  final nome = 'Gale';

  final smtpServer = yandex(email, password);
  print('carregou dados do smtpServer');

  final message = Message()
    ..from = Address(email, nome)
    ..recipients = ['lvantuire@gmail.com']
    ..subject = "Ola Teste "
    ..text = 'Teste de texto \n com mudança de linha';

  print('carregou dados da mensagem vai tentar mandar agora pelo send');

  try {
    await send(message, smtpServer);
    print('email enviado');
  } on MailerException catch (e) {
    print(e);
  }
}
