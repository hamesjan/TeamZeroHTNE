import 'package:flutter/material.dart';
import 'package:htnemask/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'OpenSans',
        backgroundColor: Colors.blue
      ),
      home: Home(queueState: false,),
    );
  }
}

