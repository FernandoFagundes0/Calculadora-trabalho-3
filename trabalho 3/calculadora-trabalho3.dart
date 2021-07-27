import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculadora"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Resultado: ${resultado.toStringAsFixed(2)}",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: campoValor1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 2"),
              controller: campoValor2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.blueAccent,
                  onPressed: somar,
                ),
                new MaterialButton(
                    child: new Text(
                      "-",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    color: Colors.blueAccent,
                    onPressed: subtrair),
                new MaterialButton(
                    child: new Text(
                      "/",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    color: Colors.blueAccent,
                    onPressed: dividir),
                new MaterialButton(
                    child: new Text(
                      "*",
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    color: Colors.blueAccent,
                    onPressed: multiplicar),
              ],
            ),
            new Padding(padding: const EdgeInsets.only(top: 20)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Limpar"),
                    color: Colors.grey,
                    onPressed: limpar)
              ],
            )
          ],
        ),
      ),
    );
  }

  num num1 = 0;
  num num2 = 0;
  num resultado = 0;

  TextEditingController campoValor1 = new TextEditingController(text: "");
  TextEditingController campoValor2 = new TextEditingController(text: "");

  void somar() {
    setState(() {
      num1 = num.parse(campoValor1.text);
      num2 = num.parse(campoValor2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = num.parse(campoValor1.text);
      num2 = num.parse(campoValor2.text);
      resultado = num1 - num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = num.parse(campoValor1.text);
      num2 = num.parse(campoValor2.text);
      resultado = num1 / num2;
    });
  }

  void multiplicar() {
    setState(() {
      num1 = num.parse(campoValor1.text);
      num2 = num.parse(campoValor2.text);
      resultado = num1 * num2;
    });
  }

  void limpar() {
    setState(() {
      campoValor1.text = "";
      campoValor2.text = "";
      resultado = 0;
    });
  }
}
