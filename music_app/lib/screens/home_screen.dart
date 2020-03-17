import 'package:flutter/material.dart';
import 'package:music_app/models/artist.dart';
import 'package:music_app/models/song.dart';
import 'package:music_app/widgets/play_item.dart';

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
                children: <Widget>[
                  _buildTitle('Made for You'),
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
                  _buildTitle('Recommended'),
                  Container(
                    height: 200,
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      scrollDirection: Axis.horizontal,
                      children: songs.map((s) => PlayItem(song: s)).toList(),
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

  Widget _buildTitle(String title) {
    return Padding(
      padding:
          EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0, bottom: 10.0),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      // height: 80.0,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(children: artists.map((e) => _buildAvatar(e)).toList()),
      ),
    );
  }

  Widget _buildAvatar(Artist artist) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(35),
          image: DecorationImage(
            image: AssetImage(artist.avatar),
            fit: BoxFit.cover,
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
            borderRadius: BorderRadius.circular(30.0),
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
