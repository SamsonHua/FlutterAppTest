import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:io';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  
  void getData() async{

    Response request = await get('https://disease.sh/v3/covid-19/countries/canada');
    Map data = jsonDecode(request.body);
    
    await new Future.delayed(const Duration(seconds : 2));


    int covidcases = data['cases'];
    print(covidcases);

    Navigator.pushReplacementNamed(context, '/api', arguments: {
      'cases': covidcases

    });




  }

  @override
  void initState(){
    super.initState();
    getData();
    
  }
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
            child: Image.asset('assets/ThisIsFine.png', scale: 2.5),
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
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.green[500],
          size: 60,
        ),

      ),
    );
  }
}