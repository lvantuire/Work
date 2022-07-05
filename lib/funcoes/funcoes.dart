import 'dart:io';

import 'package:flutter/material.dart';
import 'package:primeiro_projeto/home/home_alternativo.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

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
      query: 'subject=Contato inicial Cotacao Seguros'
          '&body=Nome:\n\n'
          'Telefone:\n\n'
          'Melhor Horario de Contato:\n\n'
          'Sobre qual Produto ou assunto você gostaria de falar?:');
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
