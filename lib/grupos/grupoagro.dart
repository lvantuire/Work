import 'package:flutter/material.dart';
import 'package:primeiro_projeto/formularios/formulario_simples.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GrupoAgro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.95,
      height: 250,
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
            icon: Icon(
              Icons.agriculture,
              color: Color.fromARGB(255, 0, 72, 131),
            ),
            label: Text(
              'Tratores e Implementos',
              style: TextStyle(color: Color.fromARGB(255, 0, 72, 131)),
            ),
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
            icon: FaIcon(
              FontAwesomeIcons.tree,
              color: Color.fromARGB(255, 0, 72, 131),
            ),
            label: Text(
              'Seguro da Plantação',
              style: TextStyle(color: Color.fromARGB(255, 0, 72, 131)),
            ),
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
            icon: FaIcon(
              FontAwesomeIcons.cow,
              color: Color.fromARGB(255, 0, 72, 131),
            ),
            label: Text(
              'Seguro Animais',
              style: TextStyle(color: Color.fromARGB(255, 0, 72, 131)),
            ),
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
