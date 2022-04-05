import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    var radius = 20;

    return Scaffold(
      appBar: AppBar(
        title: Text("Posttest 1 Rahmat Kamara"),
      ),
      body: Container(
        width: lebar,
        height: tinggi,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.lightGreen, Colors.lightBlue]),
            color: Colors.cyan,
            border: Border.all(
              width: 15,
              color: Colors.amber,
            ),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: const Text(
          "Rahmat Kamara",
          style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              shadows: [
                Shadow(
                    color: Colors.purple, blurRadius: 10, offset: Offset(5, 5))
              ]),
        ),
      ),
    );
  }
}
