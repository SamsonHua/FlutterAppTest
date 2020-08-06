import 'package:flutter/material.dart';
import 'ThisIsFine.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Colors.orange[300],
                  Colors.deepOrange[700],
                ])),
        ),
        title: Row(
          children: <Widget>[
            Image.asset('assets/ThisIsFine.png', scale: 3),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Doggo Counter',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2.0,
                  fontFamily: 'Montserrat',
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.orange[500],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex:2,
            child: ThisIsFine()),
          Expanded(
            flex:2,
            child: ThisIsFine()),
          Expanded(
            flex:2,
            child: ThisIsFine()),
          Expanded(
            flex:1,
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: RaisedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.blue[400],
              icon: Icon(Icons.home),
              label: Text("Back"),
            ),
                      ),
          ),
        ],
      ),
    );
  }
}
