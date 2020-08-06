import 'package:flutter/material.dart';
import 'package:samsons_first_app/pages/second_page.dart';
import 'ThisIsFine.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  final tabs = [
    Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            fit: StackFit.loose,
            alignment: AlignmentDirectional.center,
            children: <Widget>[

              ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.9, 1],
                    colors: [Colors.blue, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/EpicBackground.png',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),

              Column(
                children: [
                  Text(
                    'Welcome back',
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 3.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 2.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/ess_portraits-20.jpg'),
                      minRadius: 50,
                      maxRadius: 60,
                    ),
                  ),
                  Text(
                    'Samson',
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          blurRadius: 3.0,
                          color: Colors.black,
                          offset: Offset(2.0, 2.0),
                        ),
                      ],
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      wordSpacing: 2.0,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
    Center(child: Text('People')),
    Center(child: Text('Money')),
    Center(child: Text('Random')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                  Colors.cyan[400],
                  Colors.blue[800],
                ])),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Material(
                          elevation: 20,
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Image.asset('assets/ThisIsFine.png',
                                height: 80, width: 80),
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                        child: Text(
                          'Doggo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.0,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomListTile(
                  Icons.cloud,
                  "Doggo Counter",
                  () => {
                        Navigator.pop(context),
                        Navigator.pushNamed(context, '/second_page'),
                      }),
              CustomListTile(
                  Icons.settings,
                  "API Test",
                  () => {
                        Navigator.pop(context),
                        Navigator.pushNamed(context, '/loading'),
                      }),
              CustomListTile(
                  Icons.wifi,
                  "Feature Testing",
                  () => {
                        Navigator.pop(context),
                        Navigator.pushNamed(context, '/sliver'),
                      }),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Colors.cyan[400],
            Colors.blue[800],
          ])),
        ),
        title: Row(
          children: <Widget>[
            Image.asset('assets/ThisIsFine.png', scale: 3),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Doggo Dashboard',
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
        backgroundColor: Colors.blue[500],
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.grey[100],
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Colors.green,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.black,
          showSelectedItemShadow: false,
          barHeight: 70,
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
            print(selectedIndex);
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.calendar_today,
            label: '',
            selectedBackgroundColor: Colors.blue,
          ),
          FFNavigationBarItem(
            iconData: Icons.people,
            label: '',
            selectedBackgroundColor: Colors.blue,
          ),
          FFNavigationBarItem(
            iconData: Icons.attach_money,
            label: '',
            selectedBackgroundColor: Colors.blue,
          ),
          FFNavigationBarItem(
            iconData: Icons.note,
            label: '',
            selectedBackgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;

  CustomListTile(this.icon, this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 0, 4, 3),
      child: Container(
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: Colors.grey[400]),
        )),
        child: InkWell(
          splashColor: Colors.blueAccent,
          onTap: onTap,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 5, 0),
                      child: Icon(icon),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        text,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1.0,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ],
                ),
                Icon(Icons.arrow_right),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
