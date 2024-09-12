import 'package:flutter/material.dart';

void main() => runApp(const GestureDetectorExampleApp());

class GestureDetectorExampleApp extends StatelessWidget {
  const GestureDetectorExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GestureDetectorExample(),
    );
  }
}

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  bool _lightIsOn = false;
  int noOfTimeTapped = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 212, 88, 130),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 146, 228, 69),
          title: Center(
            child: Text(
              "Gesture Detectore",
              style: TextStyle(color: Colors.pink),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "TApped " + noOfTimeTapped.toString() + " times",
                style: TextStyle(fontSize: 18),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    noOfTimeTapped++;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(15),
                  color: Colors.green[200],
                  child: Text(
                    "Tap Here ",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
