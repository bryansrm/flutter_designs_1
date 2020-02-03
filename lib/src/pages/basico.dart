import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final styleTitle = TextStyle( fontSize: 25.0, fontWeight: FontWeight.bold);
  final styleSubtitle = TextStyle( fontSize: 15.0, color: Colors.grey);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(
            image: NetworkImage('https://cdn.pixabay.com/photo/2012/08/27/14/19/evening-55067__340.png'),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Parrafo del texto 1', style: styleTitle),
                      Text('Parrafo del texto 2', style: styleSubtitle),
                    ],
                  ),
                ),
                Icon( 
                  Icons.star,
                  size: 20.0,
                  color: Colors.red
                ),
                Text('41', style: TextStyle(fontSize: 20.0),)
              ],
            ),
          )
        ],
      )
    );
  }
}