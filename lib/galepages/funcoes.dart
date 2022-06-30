import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

abrirWhatsAppWeb() async {
  var whatsappweb =
      "https://wa.me/+5516997776229/?text=Eu%20tenho%20interesse%20no%20seu%20carro%20à%20venda";

  if (await canLaunchUrlString(whatsappweb)) {
    await launchUrlString(whatsappweb);
  }
}

abrirWhatAppMobile() async {
  var whatsappUrl = "whatsapp://send?phone=+5516997776229&text=Olá,tudo bem ?";

  if (await canLaunchUrlString(whatsappUrl)) {
    await launchUrlString(whatsappUrl);
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
    required this.descricaoCobertura,
  }) : super(key: key);

  final String text;
  final String descricaoCobertura;

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
              color: Colors.white,
              blurRadius: 10,
              offset: Offset(4, 4),
            ),
          ],
        ),
        child: Center(
          child: InkWell(
            borderRadius: BorderRadius.circular(50),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return Center(
                    child: SimpleDialog(
                      backgroundColor: Colors.amber.withOpacity(0.8),
                      title: Text(
                        text,
                        textAlign: TextAlign.center,
                      ),
                      contentPadding: EdgeInsets.all(10),
                      children: [
                        Text(descricaoCobertura),
                      ],
                    ),
                  );
                },
              );
            },
            child: Center(
              child: Text(
                text.toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

abreWhats() {
  if (kIsWeb) {
    abrirWhatsAppWeb();
  } else {
    abrirWhatAppMobile();
  }
}
