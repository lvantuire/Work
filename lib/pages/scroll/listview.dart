import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        itemCount: 1000,
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.red,
          );
        },
        itemBuilder: (context, index) {
          print('Carregando index n $index');
          return ListTile(
            title: Text('Indice index $index'),
            subtitle: const Text('Flutter é Top'),
            leading: const CircleAvatar(
              backgroundImage: AssetImage('assets/kakashi.jpg'),
              maxRadius: 35,
            ),
            trailing: const CircleAvatar(),
          );
        },
      ),
    );
  }
}
