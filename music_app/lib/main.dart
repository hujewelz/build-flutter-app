import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF060606),
        accentColor: Color(0xFFFA1505),
      ),
      home: MyHomePage(title: 'Music App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            _buildTopBar(),
            Expanded(
              child: ListView(
                // padding: EdgeInsets.all(16.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 20.0, bottom: 10.0),
                    child: Text(
                      'Made for You',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 370,
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _buildForYou(),
                        _buildForYou(),
                        _buildForYou(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 20.0, bottom: 10.0),
                    child: Text(
                      'Recommended',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    height: 154,
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        _buildRecommended(),
                        _buildRecommended(),
                        _buildRecommended(),
                        _buildRecommended(),
                        _buildRecommended(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
    );
  }

  Widget _buildTopBar() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 9.0),
          child: Row(
            children: <Widget>[
              _buildAvatar(),
              _buildAvatar(),
              _buildAvatar(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAvatar() {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: SizedBox(
        width: 70.0,
        height: 70.0,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(35.0),
          ),
          child: Center(
            child: CircleAvatar(
              radius: 33,
              backgroundImage: AssetImage('assets/images/elizabeth.jpeg'),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildForYou() {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: SizedBox(
        width: 280.0,
        height: 370.0,
        child: Stack(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.asset(
              'assets/images/a.png',
              height: 370.0,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 20.0,
            bottom: 20.0,
            child: Text(
              'DAaaa',
              style: TextStyle(
                color: Colors.white,
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ]),
      ),
    );
  }

  Widget _buildRecommended() {
    return Container(
      padding: EdgeInsets.all(4.0),
      child: SizedBox(
        width: 154.0,
        height: 154.0,
        child: Stack(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset('assets/images/a.png'),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 38,
                width: 38,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: Theme.of(context).accentColor,
                      borderRadius: BorderRadius.circular(19.0)),
                  child: Icon(
                    Icons.play_arrow,
                    size: 32.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle),
          title: SizedBox.shrink(),
        ),
      ],
      type: BottomNavigationBarType.fixed,
      elevation: 0.0,
      iconSize: 28.0,
      backgroundColor: Colors.red,
      selectedItemColor: Theme.of(context).primaryColor,
      unselectedItemColor: Colors.white,
      onTap: _onItemTapped,
    );
  }
}
