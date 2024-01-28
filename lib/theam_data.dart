import 'package:flutter/material.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Center(child: ElevatedButton(onPressed: (){
    setState(() {
      _boolIcon =! _boolIcon;
    });
  },
  child: Text("Click me here"),
  ),
  ),
    );
  }
}