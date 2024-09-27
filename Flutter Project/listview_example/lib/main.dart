import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> items = [
    {"Text": "Raje  ", "Image": "assets/bird.jpg"},
    {"Text": "John  ", "Image": "assets/flower4.jpg"},
    {"Text": "Robert", "Image": "assets/flower5.jpg"},
    {"Text": "lord  ", "Image": "assets/msdhoni.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("This is the list title example"),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  color: Color.fromARGB(255, 236, 10, 85),
                  child: Row(
                    children: [
                      Text(
                        items[index]['Text'],
                        style: TextStyle(fontSize: 44),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Image.asset(
                          items[index]['Image'],
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  )),
            );
          },
        ));
  }
}
