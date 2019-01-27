import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstRoute();
  }
}
class _FirstRoute extends State<FirstRoute> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('Captoner'),
            backgroundColor: Color.fromRGBO(55, 71, 133, 1)
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: IconButton(
                splashColor: Color.fromRGBO(55, 71, 133, 1),
                iconSize: 100,
                icon: Icon(Icons.add_a_photo,),
                onPressed: () {
                  getImage();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondRoute(_image)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class SecondRoute extends StatefulWidget {
  final File img;

  SecondRoute(this.img);
  @override
  State<StatefulWidget> createState() {
    return _SecondRoute();
  }
}
class _SecondRoute extends State<SecondRoute> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: Image.file(widget.img)
      ),
    );
  }
}