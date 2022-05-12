import 'package:flutter/material.dart';
import 'package:primeiro_projeto/grupos/grupoagro.dart';
import 'package:primeiro_projeto/grupos/grupobenseprodutos.dart';
import 'package:primeiro_projeto/grupos/grupoempresa.dart';
import 'package:primeiro_projeto/grupos/grupofamilia.dart';
import 'package:primeiro_projeto/grupos/grupomedicos.dart';

class HomePageAlternativa extends StatelessWidget {
  const HomePageAlternativa({Key? key}) : super(key: key);

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
              onPressed: () {},
              icon: const Icon(
                Icons.whatsapp,
                color: Colors.white,
                // size: 20.0,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone,
                color: Colors.white,
                //size: 20.0,
              ),
            ),
            IconButton(
              onPressed: () {},
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
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: Text(
                      'Tecnologia e Humanização, atendendo a todos, sem limitações, sempre com a melhor qualidade, liga pra gente 16-99444-2000 - 3032-3704 ou 011-98983-6080, seja atendido por um especialista, sem precisar ficar escolhendo opções, a ligação é direta!, explique suas necessidade que teremos o prazer de encontrar a melhor solução!'),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                GrupoMedicos(),
                SizedBox(height: 20),
                GrupoProducaoBenseProdutos(),
                SizedBox(height: 20),
                GrupoEmpresa(),
                SizedBox(height: 20),
                GrupoAgro(),
                SizedBox(height: 20),
                GrupoFamilia(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
