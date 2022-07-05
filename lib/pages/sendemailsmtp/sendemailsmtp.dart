import 'package:flutter/material.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class Sendemailsmtp extends StatefulWidget {
  const Sendemailsmtp({Key? key}) : super(key: key);

  @override
  State<Sendemailsmtp> createState() => _SendemailsmtpState();
}

class _SendemailsmtpState extends State<Sendemailsmtp> {
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
  final email = 'lvantuire@gmail.com';
  final token = '';
  final nome = 'Luiz';

  final smtpServer = gmailSaslXoauth2(email, token);
  print('carregou dados do smtpServer');

  final message = Message()
    ..from = Address(email, nome)
    ..recipients = ['lvantuire@yahoo.com']
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
