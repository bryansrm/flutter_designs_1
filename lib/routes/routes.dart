
import 'package:flutter/material.dart';
import 'package:flutter_disenios/src/pages/basico.dart';
import 'package:flutter_disenios/src/pages/botones_page.dart';
import 'package:flutter_disenios/src/pages/scroll_page.dart';

Map<String, WidgetBuilder> getAplicationsRoutes(){
  return <String, WidgetBuilder>{
    'basico' : (context) => BasicoPage(),
    'scroll' : (context) => ScrollPage(),
    'botones' : (context) => BotonesPage(),
  };
}