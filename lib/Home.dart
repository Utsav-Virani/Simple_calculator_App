import 'package:flutter/material.dart';
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {

  var a=0,b=0,s=0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void _doAdd(){
    a = int.parse(t1.text);
    b = int.parse(t2.text);
    setState(() {
      s=a+b;
    });
  }

  void _doSub(){
    a = int.parse(t1.text);
    b = int.parse(t2.text);
    setState(() {
      s=a-b;
    });
  }

  void _doMul(){
    a = int.parse(t1.text);
    b = int.parse(t2.text);
    setState(() {
      s=a*b;
    });
  }

  void _doDiv(){
    a = int.parse(t1.text);
    b = int.parse(t2.text);
    setState(() {
      s=a ~/ b;
    });
  }

  void _doClear(){
    setState(() {
      t1.text="0";
      t2.text="0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Center(
          child : new Text("Calculator"),
        ),
      ),
      body: new Container(
        padding: const EdgeInsets.only(
            left: 50.0,
            right: 50.0
        ),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Text("Output : $s",style: new TextStyle(
              color: Colors.brown,
              fontSize: 30.0,
            )),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: "First number"
              ),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                  labelText: "Second number"
              ),
              controller: t2,
            ),
            new Padding(
              padding:  const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("+",style: new TextStyle(
                    fontSize: 25.0,
                    color: Colors.black87,
                  ),),
                  color: Colors.red,
                  onPressed: _doAdd,
                ),
                new MaterialButton(
                  child: new Text("-",style: new TextStyle(
                    fontSize: 25.0,
                    color: Colors.black87,
                  ),),
                  color: Colors.red,
                  onPressed: _doSub,
                ),
              ],
            ),
            new Padding(
              padding:  const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("*",style: new TextStyle(
                    fontSize: 25.0,
                    color: Colors.black87,
                  ),),
                  color: Colors.red,
                  onPressed: _doMul,
                ),
                new MaterialButton(
                  child: new Text("/",style: new TextStyle(
                    fontSize: 25.0,
                    color: Colors.black87,
                  ),),
                  color: Colors.red,
                  onPressed: _doDiv,
                ),
              ],
            ),
            new Padding(
              padding: new EdgeInsets.only(top: 20),
            ),
            new MaterialButton(
              child: new Text("CLEAR",style: new TextStyle(
                fontSize: 25.0,
                color: Colors.black87,
              ),),
              color: Colors.orange,
              height: 50,
              minWidth: 200,
              onPressed: _doClear,
            ),
          ],
        ),
      ),
    );
  }
}