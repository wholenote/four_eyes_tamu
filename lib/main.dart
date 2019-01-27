import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

void main() {
  runApp(MyHomePage());
}
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Color.fromRGBO(168,208,230,1),
          appBar: AppBar(
              centerTitle: true,
              title: Text('Captioner'),
              backgroundColor: Color.fromRGBO(55, 71, 133, 1)
          ),
          body: Container(
          padding: EdgeInsets.only(bottom: 180.0),
            child: _image == null
                ? Center(child: Text('No image selected.'))
                : Center(child: Image.file(_image)),
          ),
          floatingActionButton:
          FloatingActionButton(
            onPressed: getImage,
            child: Icon(Icons.add_a_photo),
          )
      ),
    );
  }
}