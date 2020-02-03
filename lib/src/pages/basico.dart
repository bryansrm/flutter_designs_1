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
          ),
          _createActions(),
          _createText(),

        ],
      )
    );
  }

  Widget _createActions(){
    
    List<Widget> listActions = [];
    List<dynamic> actions = [
      {
        'text' : 'CALL',
        'icon' : Icons.call
      },
      {
        'text' : 'ROUTE',
        'icon' : Icons.near_me
      },
       {
        'text' : 'SHARE',
        'icon' : Icons.share
      }
    ];

    for (var action in actions) {
      
      listActions.add(
        Column(
          children: <Widget>[
            Icon( action['icon'] , color: Colors.blue,),
            SizedBox(height: 10.0,),
            Text( action['text'] , style: TextStyle(color: Colors.blue),)
          ],
        ),
      );

    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: listActions,
    );
  
  }

  Widget _createText(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Text(
        'Do pariatur ullamco et ipsum anim incididunt dolore dolore. Est amet magna consequat irure reprehenderit magna consectetur aute voluptate officia elit. Irure consectetur tempor sunt labore culpa cillum do ullamco. Laborum aliquip consectetur Lorem non laboris. Ad consectetur irure voluptate nisi elit tempor ullamco non. Sit esse voluptate do duis non ut aliquip in irure consectetur.',
        textAlign: TextAlign.justify,
      ),
    );
  }

}