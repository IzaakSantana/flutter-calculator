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

Widget boxButton(String texto) {
  return SizedBox(
    width: 50,
    height: 50,
    child: ElevatedButton(
      child: myText(texto, 20.0, Colors.white),
      onPressed: () {
        
      }
    ),
  );
}