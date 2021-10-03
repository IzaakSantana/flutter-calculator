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
  double paddingSize = 20.0;
  double rowSpace = 20.0;

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
                              boxButton("1"),
                              boxButton("2"),
                              boxButton("3"),
                              boxButton("+")
                            ]
                          ),
                          SizedBox(height: rowSpace),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boxButton("4"),
                              boxButton("5"),
                              boxButton("6"),
                              boxButton("-")
                            ]
                          ),
                          SizedBox(height: rowSpace),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boxButton("7"),
                              boxButton("8"),
                              boxButton("9"),
                              boxButton("/")
                            ]
                          ),
                          SizedBox(height: rowSpace),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boxButton(","),
                              boxButton("0"),
                              boxButton("="),
                              boxButton("*")
                            ]
                          ),
                          SizedBox(height: rowSpace),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              bigBoxButton("clear"),
                              bigBoxButton("delete")
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
