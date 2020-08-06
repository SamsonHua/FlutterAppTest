import 'package:flutter/material.dart';
import 'home.dart';

class SliverPage extends StatefulWidget {
  @override
  _SliverPageState createState() => _SliverPageState();
}

class _SliverPageState extends State<SliverPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  showSnackBar(String input) {
    final snackBar = new SnackBar(
      content: new Text(
        "$input",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 13.0,
          fontWeight: FontWeight.bold,
          wordSpacing: 2.0,
          fontFamily: 'Montserrat',
        ),
      ),
      duration: new Duration(seconds: 2),
      backgroundColor: Colors.green[500],
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            actions: <Widget>[
              new IconButton(
                icon: new Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(null),
              ),
            ],
            leading: new Container(),
            backgroundColor: Colors.white,
            pinned: true,
            floating: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Mountain Lol',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 5.0,
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 2.0,
                  fontFamily: 'Montserrat',
                ),
              ),
              background: ShaderMask(
                shaderCallback: (rect) {
                  return LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.8, 0.9],
                    colors: [Colors.blue, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'assets/Landscape.jpg',
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),

              //  Image.asset(
              //   'assets/Landscape.jpg',
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                CustomListTile(Icons.chat_bubble, 'Press 4 Chat',
                    () => {showSnackBar('Here is a chat')}),
                CustomListTile(Icons.donut_large, 'Press 4 Donut',
                    () => {showSnackBar('Here is a donut')}),
                CustomListTile(Icons.add_alarm, 'Press 4 Alarm',
                    () => {showSnackBar('Here is an alarm')}),
                CustomListTile(Icons.tablet, 'Press 4 Tablet', () => {}),
                CustomListTile(Icons.backup, 'Press 4 Backup', () => {}),
                CustomListTile(Icons.fastfood, 'Press 4 Borger', () => {}),
                CustomListTile(Icons.nature, 'Press 4 Nature', () => {}),
                CustomListTile(Icons.terrain, 'Press 4 Terrain', () => {}),
                CustomListTile(Icons.arrow_downward, 'Press 4 Down', () => {}),
                CustomListTile(Icons.dashboard, 'Press 4 Dashboard', () => {}),
                CustomListTile(Icons.mouse, 'Press 4 Mouse', () => {}),
                CustomListTile(Icons.folder, 'Press 4 Folder', () => {}),
                CustomListTile(Icons.movie, 'Press 4 Movie', () => {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
