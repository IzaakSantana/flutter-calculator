import 'package:flutter/material.dart';

Widget myText(String texto, double tamanho, Color cor) {
  return RichText(
    text: TextSpan(
      text: texto,
      style: TextStyle(
        fontSize: tamanho,
        fontFamily: "ShareTechMono",
        color: cor      
      )
    )
  );
}

Widget boxButton(String texto, Function callback) {
  return SizedBox(
    width: 50,
    height: 50,
    child: ElevatedButton(
      child: myText(texto, 20.0, Colors.white),
      onPressed: () {
        if (texto != "=") {
          callback(texto);
        } else {
          callback();
        }
      }
    ),
  );
}

Widget bigBoxButton(String texto, Function callback) {
  return SizedBox(
    width: 120,
    height: 50,
    child: ElevatedButton(
      child: myText(texto, 20, Colors.white),
      onPressed: () {
        callback();
      }
    )
  );
}