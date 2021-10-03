import 'package:flutter/material.dart';
import 'custom_widgets.dart';

void main() {
  runApp(const Home());
}


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  String resultado = "0";
  var resultList = [];

  double paddingSize = 20.0;
  double rowSpace = 20.0;

  void updateResult(String texto) {
    setState(() {

      if (resultado == '0') {
        resultado = texto;
        resultList = resultado.split("");
      } else {
        resultado += texto;
        resultList = resultado.split("");
      }

    });
  }

  void clearResult() {
    setState(() {
      resultado = "0";
      resultList.clear();
    });
  }

  void deleteResult() {
    setState(() {

      if (resultList.isNotEmpty) {
        resultList.removeLast();
        resultado = resultList.join("");
      }

      if (resultList.isEmpty) {
        resultado = "0";
        resultList = resultado.split("");
      }

    });
    
  }

  void calcular() {
    print("Teste");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        
      ),
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.purple[900],
          appBar: AppBar(
            centerTitle: true,
            title: Text("Calculadora")
          ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(paddingSize),
              child: Container( // Container geral
                color: Colors.deepPurple[100],
                child: Column(
                  children: [
                    Padding (
                      padding: EdgeInsets.all(paddingSize),
                      child: Container( // Container do resultado
                        width: 300,
                        height: 50,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: myText(resultado, 30.0, Colors.black)
                          )
                        )
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.all(paddingSize),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boxButton("1", updateResult),
                              boxButton("2", updateResult),
                              boxButton("3", updateResult),
                              boxButton("+", updateResult)
                            ]
                          ),
                          SizedBox(height: rowSpace),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boxButton("4", updateResult),
                              boxButton("5", updateResult),
                              boxButton("6", updateResult),
                              boxButton("-", updateResult)
                            ]
                          ),
                          SizedBox(height: rowSpace),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boxButton("7", updateResult),
                              boxButton("8", updateResult),
                              boxButton("9", updateResult),
                              boxButton("/", updateResult)
                            ]
                          ),
                          SizedBox(height: rowSpace),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boxButton(",", updateResult),
                              boxButton("0", updateResult),
                              boxButton("=", calcular),
                              boxButton("*", updateResult)
                            ]
                          ),
                          SizedBox(height: rowSpace),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              bigBoxButton("clear", clearResult),
                              bigBoxButton("delete", deleteResult)
                            ]
                          )
                        ]
                      )
                    )
                  ]
                )
              )
            )
          )
        )
      ),
    );
  }
}
