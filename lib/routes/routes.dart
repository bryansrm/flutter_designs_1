
import 'package:flutter/material.dart';
import 'package:flutter_disenios/src/pages/basico.dart';

Map<String, WidgetBuilder> getAplicationsRoutes(){
  return <String, WidgetBuilder>{
    'basico' : (context) => BasicoPage()
  };
}