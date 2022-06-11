import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int data = 30; 

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
         centerTitle: true,
      ),
        body:Center(
        child:Container(
        child: Text('$data days of flutter'),
      )),
      drawer: Drawer(),
      );
  }
}