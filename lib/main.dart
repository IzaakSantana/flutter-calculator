import 'package:flutter/material.dart';

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
              child: Container(
                color: Colors.deepPurple[100],
                child: Column(
                  children: [
                    Padding (
                      padding: EdgeInsets.all(paddingSize),
                      child: Container(
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
                              boxButton("3")
                            ]
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boxButton("4"),
                              boxButton("5"),
                              boxButton("6")
                            ]
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              boxButton("7"),
                              boxButton("8"),
                              boxButton("9")
                            ]
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              boxButton("0"),
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
