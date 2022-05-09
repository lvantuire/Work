import 'package:flutter/material.dart';
import 'package:primeiro_projeto/formulario/formulario.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GrupoAgro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/agro.jpg'), fit: BoxFit.cover),
        color: Colors.yellow,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
            bottomLeft: Radius.circular(50)),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            blurRadius: 10,
            offset: Offset(5, 5),
          ),
        ],
      ),
      //color: Colors.red,
      width: MediaQuery.of(context).size.width * 98 / 100,
      height: 330,

//*texto da primeira Caixa
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Center(
              child: Text(
                'Produção Agrícola e Implementos',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 64, 116),
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FormularioPage(),
                ),
              );
            },
            icon: Icon(Icons.agriculture),
            label: Text('Tratores e Implementos'),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellowAccent,
              shadowColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FormularioPage(),
                ),
              );
            },
            icon: FaIcon(FontAwesomeIcons.tree),
            label: Text('Seguro da Platação'),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellowAccent,
              shadowColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FormularioPage(),
                ),
              );
            },
            icon: FaIcon(FontAwesomeIcons.cow),
            label: Text('Seguro Animais'),
            style: ElevatedButton.styleFrom(
              primary: Colors.yellowAccent,
              shadowColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
