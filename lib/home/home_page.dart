import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rows_columns,
  media_query,
  layout_builder,
  galeseguros,
  image_page,
  botoes_rotacao,
  single_scroll,
  list_view,
  home_alternativa,
  snackbar_page,
  forms_page,
  forms_page_decor,
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//? APP BAR

    return Scaffold(
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

//?INICIO DO POUPUPMENU CASE

          PopupMenuButton<PopupMenuPages>(
              icon: const Icon(Icons.menu_rounded),
              initialValue: PopupMenuPages.container,
              tooltip: 'Selecione uma opção do Menu',
              onSelected: (PopupMenuPages valueSelected) {
                switch (valueSelected) {
                  case PopupMenuPages.container:
                    Navigator.of(context).pushNamed('/container');
                    break;

                  case PopupMenuPages.rows_columns:
                    Navigator.of(context).pushNamed('/rows_columns');
                    break;

                  case PopupMenuPages.media_query:
                    Navigator.of(context).pushNamed('/media_query');
                    break;

                  case PopupMenuPages.layout_builder:
                    Navigator.of(context).pushNamed('/layout_builder');
                    break;
                  case PopupMenuPages.galeseguros:
                    Navigator.of(context).pushNamed('/galeseguros');
                    break;
                  case PopupMenuPages.image_page:
                    Navigator.of(context).pushNamed('/image_page');
                    break;
                  case PopupMenuPages.botoes_rotacao:
                    Navigator.of(context).pushNamed('/botoes_rotacao');
                    break;

                  case PopupMenuPages.single_scroll:
                    Navigator.of(context).pushNamed('/single_scroll');
                    break;
                  case PopupMenuPages.list_view:
                    Navigator.of(context).pushNamed('/list_view');
                    break;
                  case PopupMenuPages.home_alternativa:
                    Navigator.of(context).pushNamed('/home_alternativa');
                    break;
                  case PopupMenuPages.snackbar_page:
                    Navigator.of(context).pushNamed('/snackbar_page');
                    break;
                  case PopupMenuPages.forms_page:
                    Navigator.of(context).pushNamed('/forms_page');
                    break;
                  case PopupMenuPages.forms_page_decor:
                    Navigator.of(context).pushNamed('/forms_page_decor');
                    break;
                }
              },

//?CONSTRUTOR DO MENU E BOTOES LATERAIS

              itemBuilder: (BuildContext context) {
                return <PopupMenuItem<PopupMenuPages>>[
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.container,
                    child: Text('Container child'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.rows_columns,
                    child: Text('Rows & Coluns child'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.media_query,
                    child: Text('Media Query Menu'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.layout_builder,
                    child: Text('Layout Builder'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.galeseguros,
                    child: Text('Gale Seguros'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.image_page,
                    child: Text('Image Page'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.botoes_rotacao,
                    child: Text('Botões Rotação'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.single_scroll,
                    child: Text('Single Child Scroll'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.list_view,
                    child: Text('List View'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.home_alternativa,
                    child: Text('Home Alternativa'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.snackbar_page,
                    child: Text('Snacks Bar'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.forms_page,
                    child: Text('Formulários'),
                  ),
                  const PopupMenuItem<PopupMenuPages>(
                    value: PopupMenuPages.forms_page_decor,
                    child: Text('Form Decor'),
                  ),
                ];
              })
        ],
      ),

//? CONTRUTOR DA PAGINA

      body: SingleChildScrollView(
        child: Column(
          children: [
            //* CONTAINER da Apresentação da Empresa
            Container(
                color: Colors.orangeAccent,
                height: MediaQuery.of(context).size.height * .27,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(1),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topLeft,
                                image: AssetImage('assets/escritorio.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40),
                              topLeft: Radius.circular(40),
                            ),
                          ),
                          alignment: Alignment.topLeft,
                          height: MediaQuery.of(context).size.height * .17,
                          width: MediaQuery.of(context).size.width * .3,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(' '),
                        const Text('Desde 1980'),
                        const Text('Fazendo o Melhor pelo menor preço'),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Faca sua cotação'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shadowColor: Colors.grey,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
                color: Colors.orange,
                height: MediaQuery.of(context).size.height * .27,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(1),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                alignment: Alignment.topLeft,
                                image: AssetImage('assets/medicos.jpg'),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(40),
                              topLeft: Radius.circular(40),
                            ),
                          ),
                          alignment: Alignment.topLeft,
                          height: MediaQuery.of(context).size.height * .17,
                          width: MediaQuery.of(context).size.width * .3,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(' '),
                        const Text('          Profissionais da Saúde'),
                        const Text('        Melhor Proteção'),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Faca sua cotação'),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            shadowColor: Colors.grey,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Container(
              color: Colors.deepOrange,
              height: MediaQuery.of(context).size.height * .27,
              width: MediaQuery.of(context).size.width,
              child: const Text('Protecao para sua Familia'),
            ),
            Container(
              color: Colors.amber,
              height: MediaQuery.of(context).size.height * .27,
              width: MediaQuery.of(context).size.width,
              child: const Text('Protecao para sua Empresa'),
            ),
            Container(
              color: Colors.orange,
              height: MediaQuery.of(context).size.height * .27,
              width: MediaQuery.of(context).size.width,
              child: const Text('Protecao para sua Producao'),
            ),
            Container(
              color: Colors.deepOrange,
              height: MediaQuery.of(context).size.height * .27,
              width: MediaQuery.of(context).size.width,
              child: const Text(
                  'Protecao para sua Producao e Implementes Agricolas'),
            ),
          ],
        ),
      ),
    );
  }
}
