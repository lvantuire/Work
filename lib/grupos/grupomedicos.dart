import 'package:flutter/material.dart';
import 'package:primeiro_projeto/formulario/formulario.dart';
import 'package:primeiro_projeto/grupos/SegsGrupoMedicos/PaginaRCPMedicos.dart';

class GrupoMedicos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.95,
      height: 250,

      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/medicos.jpg'), fit: BoxFit.cover),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            child: Center(
              child: Text(
                'Seguros Profissionais da Saude',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 82, 150),
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

//?BOTOES MEDICOS

          ElevatedButton.icon(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PaginaRCPMedicos(),
                ),
              );
            },
            icon: Icon(
              Icons.medication,
              color: Color.fromARGB(255, 0, 72, 131),
            ),
            label: Text(
              'RCP Médicos',
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
              Icons.healing,
              color: Color.fromARGB(255, 0, 72, 131),
            ),
            label: Text(
              'RCP Prof da Saude',
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
              Icons.airplanemode_active,
              color: Color.fromARGB(255, 0, 72, 131),
            ),
            label: Text(
              'Seguro Viagem',
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
