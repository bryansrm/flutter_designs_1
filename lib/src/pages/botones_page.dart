import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light.copyWith(
    //   statusBarColor: Colors.transparent,
    // ));

    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados()
              ],
            )
          ),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }

  Widget _fondoApp() {

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0),
          ]
        )
      ),
    );

    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360.0,
        height: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            begin: FractionalOffset(0.0, 0.6),
            end: FractionalOffset(0.0, 1.0),
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ]
          )
        ),
      )
    );

    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100,
          child: cajaRosa
        )
      ],
    );

  }

  Widget _titulos(){

    final styleTitle = TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontWeight: FontWeight.bold
    );

    final styleSubtitle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
    );

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: styleTitle),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category', style: styleSubtitle),
          ],
        ),
      ),
    );

  }

  Widget _bottomNavigationBar(BuildContext context){

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) )
        )
      ), 
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon( Icons.calendar_today ), 
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.pie_chart_outlined ),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.supervised_user_circle ),
            title: Container()
          ),
        ]
      )
    );

  }

  Widget _botonesRedondeados(){

    return Table(
      children: <TableRow>[
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
            _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Transport'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.pinkAccent, Icons.shop, 'Buy'),
            _crearBotonRedondeado(Colors.orange, Icons.insert_drive_file, 'File'),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
            _crearBotonRedondeado(Colors.green, Icons.cloud, 'Cloud'),
          ]
        ),
        TableRow(
          decoration: BoxDecoration(
            
          ),
          children: [
            _crearBotonRedondeado(Colors.red, Icons.collections, 'Photos'),
            _crearBotonRedondeado(Colors.teal, Icons.help_outline, 'Information'),
          ]
        )
      ],
    );

    // return Column(
    //   children: <Widget>[
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceAround,
    //       children: [
    //         _crearBotonRedondeado(Colors.blue, Icons.border_all, 'General'),
    //         _crearBotonRedondeado(Colors.purpleAccent, Icons.directions_bus, 'Transport'),
    //       ]
    //     ),
    //     Row(
    //       children: [
    //         _crearBotonRedondeado(Colors.pinkAccent, Icons.shop, 'Buy'),
    //         _crearBotonRedondeado(Colors.orange, Icons.insert_drive_file, 'File'),
    //       ]
    //     ),
    //     Row(
    //       children: [
    //         _crearBotonRedondeado(Colors.blueAccent, Icons.movie_filter, 'Entertaiment'),
    //         _crearBotonRedondeado(Colors.green, Icons.cloud, 'Cloud'),
    //       ]
    //     ),
    //     Row(
    //       children: [
    //         _crearBotonRedondeado(Colors.red, Icons.collections, 'Photos'),
    //         _crearBotonRedondeado(Colors.teal, Icons.help_outline, 'Information'),
    //       ]
    //     )
    //   ],
    // );

  }

  Widget _crearBotonRedondeado(Color color, IconData icono, String texto){

    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Container(
            //padding: EdgeInsets.symmetric(vertical: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                SizedBox(height: 5.0,),
                CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon( icono, color: Colors.white, size: 30.0,)
                ),
                Text( texto, style: TextStyle(color: color),),
                SizedBox(height: 5.0,),
              ],
            ),
          ),
        ),
      ),
    );
    // return Container(
    //   height: 180.0,
    //   margin: EdgeInsets.all(15.0),
    //   decoration: BoxDecoration(
    //     color: Color.fromRGBO(62, 66, 107, 0.7),
    //     borderRadius: BorderRadius.circular(20.0)
    //   ),
    //   child: ClipRect(
    //     child: BackdropFilter(
    //       filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
    //       child: Container(
    //         //padding: EdgeInsets.symmetric(vertical: 15.0),
    //         child: Column(
    //           mainAxisAlignment: MainAxisAlignment.spaceAround,
    //           children: <Widget>[
    //             SizedBox(height: 5.0,),
    //             CircleAvatar(
    //               backgroundColor: color,
    //               radius: 35.0,
    //               child: Icon( icono, color: Colors.white, size: 30.0,)
    //             ),
    //             Text( texto, style: TextStyle(color: color),),
    //             SizedBox(height: 5.0,),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ),
    // );

  }
}