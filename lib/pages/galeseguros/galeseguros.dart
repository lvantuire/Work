import 'package:flutter/material.dart';

class GaleSeguros extends StatelessWidget {
  const GaleSeguros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ESSES NÃO PRECISAM POIS VAMOS USAR O LAYOUT BUILDER
    // final mediaQuery = MediaQuery.of(context);
    // final statusBar = mediaQuery.padding.top;
    // final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
          title: const Text('Gale Seguros'), backgroundColor: Colors.orange),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .5,
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/logogale.png'),
                            fit: BoxFit.contain),
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(120),
                          bottomRight: Radius.circular(120),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white38,
                              blurRadius: 10,
                              offset: Offset(10, 10)),
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 10,
                              offset: Offset(-10, -10))
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .5,
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.all(0),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.bottomLeft,
                            image: AssetImage('assets/medicos.jpg'),
                            fit: BoxFit.fitHeight),
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(120),
                          bottomRight: Radius.circular(120),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white38,
                              blurRadius: 10,
                              offset: Offset(10, 10)),
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 10,
                              offset: Offset(-10, 0))
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
