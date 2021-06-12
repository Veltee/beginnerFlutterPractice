import 'package:flutter/material.dart';
import 'page0test.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        child: page0(),
      )



    );

  }
}