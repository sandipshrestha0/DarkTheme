import 'package:darktheam/main.dart';
import 'package:darktheam/theam_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
bool _boolIcon = false;
IconData _lightIcon = Icons.wb_sunny;
IconData _darktIcon = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
  primaryColor: Colors.amber,
  brightness: Brightness.light
);
ThemeData _darkTheam = ThemeData(
  primaryColor: Colors.red,
  brightness: Brightness.dark,
);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
theme: _boolIcon ? _darkTheam: _lightTheme,
home: Scaffold(
  appBar: AppBar(
    title: Text("Dark theme"),
    actions: [IconButton(onPressed: (){
      setState(() {
        _boolIcon = ! _boolIcon;
      });
    }, 
    icon: Icon(
      _boolIcon ? _lightIcon : _darktIcon,
    ),
    ),
    ],
  ),
  body: BodyPage(),
),
    );
  }
}
