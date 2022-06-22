import 'package:flutter/material.dart';
import '../formulario/formulario.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GrupoProducaoBenseProdutos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.95,
      height: 250,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/transporte.jpg'), fit: BoxFit.cover),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Center(
              child: Text(
                'Produção, Bens e Produtos',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 5, 93, 160),
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
            icon: FaIcon(
              FontAwesomeIcons.truckArrowRight,
              color: Color.fromARGB(255, 0, 72, 131),
            ),
            label: Text(
              'Seguros Trasportes e Cargas',
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
              FontAwesomeIcons.industry,
              color: Color.fromARGB(255, 0, 72, 131),
            ),
            label: Text(
              'Armazenagem de Grãos',
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
              FontAwesomeIcons.mobileScreenButton,
              color: Color.fromARGB(255, 0, 72, 131),
            ),
            label: Text(
              'Seguro Celular',
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
            icon: Icon(
              Icons.pedal_bike,
              color: Color.fromARGB(255, 0, 72, 131),
            ),
            label: Text(
              'Seguro Bike',
              style: TextStyle(color: Color.fromARGB(255, 0, 72, 131)),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 30),
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
