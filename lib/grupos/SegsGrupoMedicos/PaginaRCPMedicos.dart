import 'package:flutter/material.dart';
import 'package:primeiro_projeto/galepages/sendemailsmtp.dart';

import '../../galepages/funcoes.dart';
import '../../galepages/sendemailsmtp.dart';

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
                    label: Text("Cote agora com um especialista")),
                ElevatedButton.icon(
                    icon: Icon(Icons.format_align_left),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SendemailsmtpPage(),
                        ),
                      );
                    },
                    label: Text("Cotação por Formulário Simplificado")),
                ElevatedButton.icon(
                    icon: Icon(Icons.format_align_justify),
                    onPressed: () {},
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
                      BotaoCoberturas(
                          text: 'OMISSÃO DE SOCORRO',
                          descricaoCobertura:
                              'Caso o Segurado seja acusado de ter praticado Omissão de Socorro, nos termos descritos no código penal brasileiro e desde que exclusivamente relacionado a prestação de seu serviço profissional, o presente seguro cobrirá todas as despesas de defesa do segurado para que o mesmo prove sua inocência.'),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'INFECÇÃO HOSPITALAR',
                          descricaoCobertura:
                              'Caso o segurado seja envolvido em demanda judicial decorrente alegada Infecção Hospitalar, nos termos das definições pela Agência Nacional de Vigilância Sanitária – ANVISA, contraída por um paciente sob responsabilidade do segurado, o presente seguro cobrirá as despesas de defesa do segurado e eventuais condenações que sejam imputadas ao segurado.'),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'CHEFE DE EQUIPE OU DIRETOR MÉDICO',
                          descricaoCobertura:
                              'Caso o segurado sofra uma reclamação por alegado ato médico que tenha causado dano, pela sua condição de chefe de equipe ou diretor médico, diretor clínico ou posição similar, o presente seguro cobrirá o segurado, nos termos dos riscos cobertos da presente apólice, mesmo que o ato médico tenha sido praticado por outro profissional sob responsabilidade do segurado.'),
                      SizedBox(width: 10),
                      BotaoCoberturas(
                          text: 'COBERTURA EXTENSIVA PARA A PESSOA JURÍDICA',
                          descricaoCobertura:
                              'Caso o segurado possua uma empresa aberta para o desempenho de suas atividades profissionais e esta empresa sofra uma reclamação por alegado ato médico praticado pelo segurado, o seguro cobrirá também as reclamações apresentadas contra a pessoa jurídica.'),
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
