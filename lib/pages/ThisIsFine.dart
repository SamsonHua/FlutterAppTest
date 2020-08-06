import 'package:flutter/material.dart';

class ThisIsFine extends StatefulWidget {
  @override
  _ThisIsFineState createState() => _ThisIsFineState();
}

class _ThisIsFineState extends State<ThisIsFine> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RawMaterialButton(
          onPressed: () {
            setState(() {
              counter -= 1;
            });
          },
          fillColor: Colors.orange[600],
          shape: CircleBorder(),
          child: Icon(
            Icons.exposure_neg_1,
            size: 25,
          ),
        ),
        Expanded(
          flex: 2,
                  child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            margin: EdgeInsets.all(10.0),
            child: Image.asset('assets/ThisIsFine.png', scale: 1.5),
          ),
        ),
        RawMaterialButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          fillColor: Colors.orange[600],
          shape: CircleBorder(),
          child: Icon(
            Icons.exposure_plus_1,
            size: 25,
          ),
        ),
        Expanded(
          flex: 1,
                  child: Container(
            padding: EdgeInsets.all(5.0),
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            color: Colors.grey[400],
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 15.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),


          ),
        ),
      ],
    );
  }
}