import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom()
      : super(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Container(
            width: 300,
            height: 300,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('TituloX'),
                ),
                TextButton(onPressed: () {}, child: Text('Fechar Dialog'))
              ],
            ),
          ),
        );
}
