import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double num1 = 0.00 ,num2 = 0.00 ,sum = 0.00;

  final TextEditingController t1 = TextEditingController(text: "0.0");
  final TextEditingController t2 = TextEditingController(text: "0.0");

  void doAddition(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul(){
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv(){
    setState(() {
      // num1 = int.parse(t1.text);
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      sum = double.parse((num1 / num2).toStringAsFixed(2));
    });
  }

  void doClear(){
    setState(() {
      num1 = 0.0;
      num2 = 0.0;
      t1.text = "0.0";
      t2.text = "0.0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(20.0),
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("Output : $sum",
              style: new TextStyle(
              fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrange,
              ),
              ),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      hintText: "Enter Number 1"
                  ),
                  controller: t1,
                ),
              new TextField(
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                    hintText: "Enter Number 2"
                ),
                controller: t2,
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text("+"),
                      color: Colors.greenAccent,
                      onPressed: doAddition,
                    ),
                    new MaterialButton(
                      child: new Text("-"),
                      color: Colors.greenAccent,
                      onPressed: doSub,
                    ),
                  ],
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("*"),
                    color: Colors.greenAccent,
                    onPressed: doMul,
                  ),
                  new MaterialButton(
                    child: new Text("/"),
                    color: Colors.greenAccent,
                    onPressed: doDiv,
                  ),
                ],
              ),
              new Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new MaterialButton(
                    child: new Text("Clear"),
                    color: Colors.greenAccent,
                    onPressed: doClear,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
