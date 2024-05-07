import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({super.key});

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  var values = [
    "0 ",
    ".",
    "ANS",
    "=",
    "3",
    "2",
    "1",
    "+",
    "6",
    "5",
    "4",
    "-",
    "9",
    "8",
    "7",
    "*",
    "C",
    "DEL",
    "%",
    "/",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Simple Calculator",
          style: TextStyle(
            fontFamily: "MyFontFamily",
            fontSize: 30,
          ),
        ),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Expanded(
          child: GridView.builder(
              // reverse: true,
              itemCount: 20,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        values[index],
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
        const Text("trust")
      ],),
    );
  }
}
