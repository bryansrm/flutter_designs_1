import 'package:flutter/material.dart';
import 'package:flutter_disenios/routes/routes.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Basico Page',
      initialRoute: 'basico',
      routes: getAplicationsRoutes(),
    );
  }
}