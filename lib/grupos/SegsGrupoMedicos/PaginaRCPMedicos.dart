import 'package:flutter/material.dart';

class PaginaRCPMedicos extends StatelessWidget {
  const PaginaRCPMedicos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RCP Médicos'),
      ),
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/rcpmedicos.jpg'), fit: BoxFit.cover),
          ),
        ),
        Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.pink.withOpacity(0.6),
                width: 150,
                height: 150,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  color: Colors.amber.withOpacity(0.6),
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
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
