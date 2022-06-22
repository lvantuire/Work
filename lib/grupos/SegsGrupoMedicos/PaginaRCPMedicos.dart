import 'package:flutter/material.dart';

import '../../galepages/funcoes.dart';

class PaginaRCPMedicos extends StatelessWidget {
  const PaginaRCPMedicos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RCP Médicos'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/rcpmedicos.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Stack(children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.amber.withOpacity(0.8),
                ),
                height: 200,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('RCP Médicos',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                          'O Seguro de Responsabilidade Civil Profissional Médico, protege estes profissionais que, de forma involuntária, causaram danos a terceiros no exercício da profissão. Na prática, garante o reembolso a eventuais indenizações por danos morais, corporais ou materiais causados sem intenção.',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton.icon(
                    icon: Icon(Icons.phone),
                    onPressed: () {},
                    label: Text("Converse agora com um especialista")),
                ElevatedButton.icon(
                    icon: Icon(Icons.whatsapp),
                    onPressed: () {},
                    label: Text("Fale agora com um especialista")),
                ElevatedButton.icon(
                    icon: Icon(Icons.format_align_left),
                    onPressed: () {},
                    label: Text("Formulário Simplificado")),
                ElevatedButton.icon(
                    icon: Icon(Icons.format_align_justify),
                    onPressed: () {},
                    label: Text("Formulário Completo")),
                SizedBox(
                  height: 120,
                ),
                Container(
                  child: Center(
                    child: Text(
                      'C O B E R T U R A S',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 255, 234, 169),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.only(right: 5, left: 5),
                  width: double.infinity,
                  height: 70,
                  //color: Colors.amber.withOpacity(0.4),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      BotaoCoberturas(
                        text: 'DESPESA DE DEFESA',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'ACORDO JUDICIAL OU EXTRA JUDICIAL',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'CONDENAÇÃO JUDICIAL',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'RESSARCIMENTOS',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'DANOS À REPUTAÇÃO',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'CUSTAS EMERGENCIAIS',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'CALÚNIA, INJÚRIA E DIFAMAÇÃO',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'PAGAMENTOS SUPLEMENTARES',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'HONORÁRIOS RETIDOS',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'OMISSÃO DE SOCORRO',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'INFECÇÃO HOSPITALAR',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'CHEFE DE EQUIPE OU DIRETOR MÉDICO',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                        text: 'COBERTURA EXTENSIVA PARA A PESSOA JURÍDICA',
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
