import 'package:flutter/material.dart';
import 'ThisIsFine.dart';

class APIPage extends StatefulWidget {
  @override
  _APIPageState createState() => _APIPageState();
}

class _APIPageState extends State<APIPage> {

  Map data = {};

  int cases;



  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    cases = data['cases'];

    print(data);

    return Scaffold(
      appBar: AppBar(
        leading: new Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset('assets/ThisIsFine.png', scale: 3),
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Colors.green[300],
                  Colors.green[700],
                ])),
        ),
        title: Row(
          children: <Widget>[
            
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'API Test',
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
        backgroundColor: Colors.green[500],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Total Confirmed COVID Cases',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2.0,
                          fontFamily: 'Montserrat',
                        ),
                      )),
                    ],
                  ),
                  Text(
                    'In Canada',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 2.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Text(
                    '$cases',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 2.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
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
