import 'package:flutter/material.dart';
import 'package:primeiro_projeto/formularios/formulario_simples.dart';
import 'package:primeiro_projeto/formularios/formulariosRCPMedicos.dart';
import 'package:primeiro_projeto/galepages/sendemailsmtp.dart';

import '../../galepages/funcoes.dart';
import '../../galepages/sendemailsmtp.dart';

class PaginaRCPProfSaude extends StatelessWidget {
  const PaginaRCPProfSaude({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RCP Profissionais da Saúde'),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/profsaude.jpg'), fit: BoxFit.cover),
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
                  color: Colors.lightBlue.withOpacity(0.8),
                ),
                height: 200,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text('RCP Profissionais da Saúde',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                          'O Seguro de Responsabilidade Civil Profissional da Saúde, é de uma modalidade que tem a finalidade de proteger o segurado contra processos judiciais por danos materiais e/ou corporais a terceiros causados de forma involuntária na sua atividade profissional',
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
                    onPressed: () {
                      fazerLigacao();
                    },
                    label: Text("Converse agora com um especialista")),
                ElevatedButton.icon(
                    icon: Icon(Icons.whatsapp),
                    onPressed: () {
                      abreWhats();
                    },
                    label: Text("Cote agora com um especialista")),
                ElevatedButton.icon(
                    icon: Icon(Icons.format_align_left),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormularioPage(),
                        ),
                      );
                    },
                    label: Text("Cotação por Formulário Simplificado")),
                ElevatedButton.icon(
                    icon: Icon(Icons.format_align_justify),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FormularioRPCMedicosPage(),
                        ),
                      );
                    },
                    label: Text("Cotação por Formulário Completo")),
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
                        descricaoCobertura:
                            'O Seguro pagará os honorários advocatícios, laudos periciais, depósitos recursais, sucumbências e demais despesas necessárias do processo de defesa nas esferas Cível, Administrativa e Criminal.',
                      ),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'ACORDO JUDICIAL OU EXTRA JUDICIAL',
                          descricaoCobertura:
                              'Existindo a possibilidade um acordo judicial ou extrajudicial para encerrar o litígio causado pela prestação de serviços profissionais do segurado, o seguro pagará o acordo diretamente ao terceiro reclamante, limitado ao valor da cobertura contratada e com prévio consentimento da seguradora na hora da definição do valor acordado.'),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'CONDENAÇÃO JUDICIAL',
                          descricaoCobertura:
                              'Caso o segurado seja condenado judicialmente, por decisão judicial transitado em julgado ou decisão final proferida por tribunal arbitral, ou seja, sem a possibilidade de recorrer da decisão, as indenizações a título de dano material ou moral serão integralmente pagas até o limite máximo de indenização contratado.'),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'RESSARCIMENTOS',
                          descricaoCobertura:
                              'Se o segurado for Notificado ou tomar conhecimento de algum fato causado pela prestação dos serviços profissionais, que possam acarretar uma reclamação futura por parte do Terceiro, o segurado poderá acionar o seguro e caracterizada a cobertura, o ressarcimento é feito sem a necessidade de ação judicial ou mesmo reclamação formal. MÉDICOS'),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'DANOS À REPUTAÇÃO',
                          descricaoCobertura:
                              'Caso o segurado sofra um dano à sua reputação decorrente da sua prestação de serviço profissional, o seguro cobrirá as despesas necessárias para assessoria de imprensa e assessoria de reabilitação de imagem, para a preservação da reputação do segurado.'),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'CUSTAS EMERGENCIAIS',
                          descricaoCobertura:
                              'Caso o segurado tenha que fazer qualquer tipo de contratação ou pagamento de forma intempestiva com o intuito de mitigar ou minorar os possíveis impactos de um sinistro e que não haja tempo hábil de comunicar a seguradora, a seguradora fará o devido reembolso de tais despesas.'),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'CALÚNIA, INJÚRIA E DIFAMAÇÃO',
                          descricaoCobertura:
                              'Caso algum terceiro entenda que o Segurado praticou algum ato de calúnia, injúria ou difamação de forma involuntária durante a prestação de seus serviços, o seguro cobrirá as despesas de defesa para este tipo de situação, bem como fará o pagamento da indenização, caso seja necessário.'),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'PAGAMENTOS SUPLEMENTARES',
                          descricaoCobertura:
                              'Caso o Segurado precise comparecer a uma audiência ou julgamento durante o processo de regulção de sinistro, o seguro pagará as despesas do segurado para atender tal solicitação.'),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'HONORÁRIOS RETIDOS',
                          descricaoCobertura:
                              'Se o terceiro entender que o serviço prestado pelo Segurado causou algum dano e se recusar a pagar os honorários devidos ou caso o mesmo desista acionar o seguro na justiça e o segurado concorde em isentá-lo dos honorários devidos, o seguro pagará o prejuízo pelo não recebimento dos honorários.'),
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
