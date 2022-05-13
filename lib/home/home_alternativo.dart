import 'package:flutter/material.dart';
import 'package:primeiro_projeto/grupos/grupoagro.dart';
import 'package:primeiro_projeto/grupos/grupobenseprodutos.dart';
import 'package:primeiro_projeto/grupos/grupoempresa.dart';
import 'package:primeiro_projeto/grupos/grupofamilia.dart';
import 'package:primeiro_projeto/grupos/grupomedicos.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePageAlternativa extends StatelessWidget {
  const HomePageAlternativa({Key? key}) : super(key: key);

  abrirWhatsApp() async {
    var whatsappUrl =
        "whatsapp://send?phone=+5516994442000&text=Olá,tudo bem ?";

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
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
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }

  fazerLigacao() async {
    const url = "tel:1630323704";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
          backgroundColor: Colors.orange,
          title: SizedBox(
            height: 60,
            //width: 150,
            child: Image.asset(('assets/logogale.png'), fit: BoxFit.fill),
          ),
          toolbarHeight: 90,

//?BOTOES WHATAPP EMAIL E TELEFONE

          actions: [
            IconButton(
              onPressed: () {
                abrirWhatsApp();
              },
              icon: const Icon(
                Icons.whatsapp,
                color: Colors.white,
                // size: 20.0,
              ),
            ),
            IconButton(
              onPressed: () {
                fazerLigacao();
              },
              icon: const Icon(
                Icons.phone,
                color: Colors.white,
                //size: 20.0,
              ),
            ),
            IconButton(
              onPressed: () {
                abrirEmail();
              },
              icon: const Icon(
                Icons.email,
                color: Colors.white,
                //size: 20.0,
              ),
            ),
          ]),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            SizedBox(height: 10),
            Container(
              child: Text(
                '  Bem Vindo à Gale Seguros',
                //textAlign: TextAlign.center,
                style: TextStyle(
                  //color: Color.fromARGB(255, 0, 70, 128),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
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
                  height: 170,
                  width: 240,
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
                        '16-99444-2000',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '16-3032-3704',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '011-98983-6080',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text('Seja atendido por um Especialista!!!'),
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
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(height: 10),
                GrupoMedicos(),
                SizedBox(height: 20),
                GrupoProducaoBenseProdutos(),
                SizedBox(height: 20),
                GrupoEmpresa(),
                SizedBox(height: 20),
                GrupoAgro(),
                SizedBox(height: 20),
                GrupoFamilia(),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
