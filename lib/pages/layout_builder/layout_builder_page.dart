import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ESSES NÃO PRECISAM POIS VAMOS USAR O LAYOUT BUILDER
    // final mediaQuery = MediaQuery.of(context);
    // final statusBar = mediaQuery.padding.top;
    // final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Builder'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Colors.blue,
                  width: constraints.maxWidth * .5,
                  height: constraints.maxHeight * .5,
                ),
                Container(
                  color: Colors.green,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight * .5,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
