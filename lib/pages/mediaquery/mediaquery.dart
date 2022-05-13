import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    var appBar = AppBar(
      title: Text('Media Query Page'),
    );

    final statusBar = mediaQuery.padding.top;
    final heightBody = mediaQuery.size.height - statusBar - kToolbarHeight;

    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.pink,
              width: mediaQuery.size.width * .5,
              height: heightBody / 2,
            ),
            Container(
              color: Colors.orange,
              width: mediaQuery.size.width,
              height: heightBody * .5,
            ),
          ],
        ),
      ),
    );
  }
}
