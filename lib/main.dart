import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp> {
  List<String> products = ['Food Tester'];


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Captioner'),
          backgroundColor: Color.fromRGBO(255, 192, 203, 1),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: FloatingActionButton(
                onPressed: () {

                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

