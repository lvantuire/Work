import 'package:flutter/material.dart';
import '../formulario/formulario.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GrupoEmpresa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/empresa.jpg'), fit: BoxFit.cover),
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
      //texto da primeira Caixa
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Center(
              child: Text(
                'Proteção para Sua Empresa',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
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
            icon: Icon(Icons.healing),
            label: Text('Seguros Saude Empresa'),
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
            icon: FaIcon(FontAwesomeIcons.truck),
            label: Text('Seguro Frota de Veículos'),
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
            icon: FaIcon(FontAwesomeIcons.truckFast),
            label: Text('Seguro Transporte'),
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
            icon: Icon(Icons.engineering),
            label: Text('Risco Engenharia'),
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
            icon: Icon(Icons.build),
            label: Text('Risco Civil Obras'),
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
