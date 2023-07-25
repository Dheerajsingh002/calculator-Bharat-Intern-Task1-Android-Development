import 'package:calculator/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.cyan),
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Calculator",
          style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Input",
                  style: TextStyle(fontSize: 48, color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Output",
                  style: TextStyle(
                      fontSize: 34, color: Colors.white.withOpacity(0.7)),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )),
          Row(
            children: [
              button(
                  text: "AC",
                  buttonBgcolor: operatorColor,
                  tColor: orangeColor),
              button(
                  text: "<", buttonBgcolor: operatorColor, tColor: orangeColor),
              button(text: "", buttonBgcolor: Colors.transparent),
              button(
                  text: "/", buttonBgcolor: operatorColor, tColor: orangeColor)
            ],
          ),
          Row(
            children: [
              button(text: "7"),
              button(text: "8"),
              button(
                text: "9",
              ),
              button(
                  text: "*", tColor: orangeColor, buttonBgcolor: operatorColor)
            ],
          ),
          Row(
            children: [
              button(text: "4"),
              button(text: "5"),
              button(
                text: "6",
              ),
              button(
                  text: "-", tColor: orangeColor, buttonBgcolor: operatorColor)
            ],
          ),
          Row(
            children: [
              button(text: "1"),
              button(text: "2"),
              button(
                text: "3",
              ),
              button(
                  text: "+", tColor: orangeColor, buttonBgcolor: operatorColor)
            ],
          ),
          Row(
            children: [
              button(
                  text: "%", tColor: orangeColor, buttonBgcolor: operatorColor),
              button(text: "0"),
              button(
                text: ".",
              ),
              button(text: "=", tColor: orangeColor)
            ],
          )
        ],
      ),
    );
  }

  Widget button({text, tColor = Colors.white, buttonBgcolor = buttonColor}) {
    return Expanded(
      child: Container(
          margin: EdgeInsets.all(8),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(22),
                  primary: buttonBgcolor),
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(
                    fontSize: 18, color: tColor, fontWeight: FontWeight.bold),
              ))),
    );
  }
}
