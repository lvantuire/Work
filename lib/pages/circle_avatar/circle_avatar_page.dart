import 'package:flutter/material.dart';

class CircleAvatarPage extends StatelessWidget {
  const CircleAvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
      ),
      body: Row(
        children: [
          // Container(
          //   padding: EdgeInsets.all(10),
          //   height: 100,
          //   width: 100,
          //   child: CircleAvatar(
          //     backgroundImage: NetworkImage('https://new-girls.ws/wp-content/uploads/2021/05/289087-5.jpg'),
          //     backgroundImage: NetworkImage(                  'https://th.bing.com/th/id/R.5ef554457081d940e49df6892a7b5555?rik=FmZztkpi5ASj6Q&riu=http%3a%2f%2fansabrasil.com.br%2fwebimages%2ffoto_large%2f2014%2f9%2f16%2f1410888917720_8.jpg&ehk=tHUhMnpaBugCfT9uoV6JXqRC%2fVPC4zJfjWCyv%2b6Rz4g%3d&risl=&pid=ImgRaw&r=0'),
          //     backgroundImage: NetworkImage(
          //         'https://www.uniminutoradio.com.co/wp-content/uploads/2019/01/thumbnail_image.png'),
          //   ),
          // ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ImageAvatar(
                urlImage:
                    'https://th.bing.com/th/id/R.5ef554457081d940e49df6892a7b5555?rik=FmZztkpi5ASj6Q&riu=http%3a%2f%2fansabrasil.com.br%2fwebimages%2ffoto_large%2f2014%2f9%2f16%2f1410888917720_8.jpg&ehk=tHUhMnpaBugCfT9uoV6JXqRC%2fVPC4zJfjWCyv%2b6Rz4g%3d&risl=&pid=ImgRaw&r=0'),
          ),

          ImageAvatar(
              urlImage:
                  'https://www.uniminutoradio.com.co/wp-content/uploads/2019/01/thumbnail_image.png'),
        ],
      ),
    );
  }
}

class ImageAvatar extends StatelessWidget {
  final String urlImage;
  const ImageAvatar({Key? key, required this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Colors.blue], begin: Alignment.topCenter),
            //color: Colors.red,
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Container(
          padding: EdgeInsets.all(5),
          width: 100,
          height: 100,
          child: CircleAvatar(
            backgroundImage: NetworkImage(urlImage),
          ),
        ),
        Container(
          width: 100,
          height: 100,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.red,
              ),
              child: Text(
                'AO VIVO',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        )
      ],
    );
  }
}
