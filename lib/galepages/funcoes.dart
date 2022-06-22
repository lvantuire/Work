import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

abrirWhatsApp() async {
  var whatsappUrl = "whatsapp://send?phone=+5516994442000&text=Olá,tudo bem ?";

  if (await canLaunchUrlString(whatsappUrl)) {
    await launchUrlString(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

abrirEmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'contato@galeseguros.com.br',
    query:
        'subject=Contato inicial Cotacao Seguros &body=Nome:                     Telefone:                Melhor Horario de Contato:          Sobre qual Produto ou assunto você gostaria de falar?:',
  );
  String url = params.toString();
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    print('Could not launch $url');
  }
}

fazerLigacao() async {
  const url = "tel:1630323704";
  if (await canLaunchUrlString(url)) {
    await launchUrlString(url);
  } else {
    throw 'Could not launch $url';
  }
}

//?BOTOES DE COBERTURAS
class BotaoCoberturas extends StatelessWidget {
  const BotaoCoberturas({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(5),
        height: 60,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.orange.withOpacity(0.9),
          boxShadow: [
            BoxShadow(
                color: Colors.white, blurRadius: 10, offset: Offset(4, 4)),
          ],
        ),
        child: Center(
          child: Text(text.toUpperCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              )),
        ),
      ),
    );
  }
}
