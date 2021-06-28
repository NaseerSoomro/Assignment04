import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  
var result = " ";
var text;
Widget button(text){
  return ElevatedButton(
    style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.black, elevation: 5, shadowColor: Colors.yellow),
    onPressed: (){
    setState(() {
      result = result + text;
    });
  },
  child: Text(text),
  );
}

clear(){
  setState(() {
    result = " ";
  });
}

  finalResult(){
    Parser p = Parser();
    Expression exp = p.parse(result);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    setState(() {
      result = eval.toString();
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Center(
          child: Row(
                children: [
                Text("Calculator Sample", style: TextStyle(color: Colors.black),
                ),
                Container(
                   child: Icon(Icons.calculate, color: Colors.black,),
                   margin: EdgeInsets.only(left: 90),
                 ),
            ],),
        ),
        ), 


        body:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(result,style: TextStyle(fontSize: 20, color: Colors.black),),
              SizedBox(height: 10),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              button("1"),
              button("2"),
              button("3"),
              button("+"),
              ],),
              SizedBox(height: 10),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              button("4"),
              button("5"),
              button("6"),
              button("-"),
              ],),
              SizedBox(height: 10),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
               button("7"),
              button("8"),
              button("9"),
              button("*"),
              ],),
              SizedBox(height: 10),
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
             button("0"),
             ElevatedButton(
               style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.black, elevation: 5, shadowColor: Colors.yellow),
               onPressed: clear, child: Text("C"),),
             ElevatedButton(
               style: ElevatedButton.styleFrom(primary: Colors.white, onPrimary: Colors.black, elevation: 5, shadowColor: Colors.yellow),
               onPressed: finalResult, child: Text("="),),
             button("/"),
              ],),
            ],),
    );
  }
}

