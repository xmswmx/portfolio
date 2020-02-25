import 'package:flutter/material.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/util/consts.dart';
import 'package:portfolio/widgets/myAppBar.dart';
import 'package:portfolio/widgets/mouse_cursor.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  PageController _pageController;
  int _page = 0;
  List tabs = [
    "Home",
    "My Work",
    "Services",
    "Let's talk"
  ];

  List<Widget> navButtons(){
    return Constants.map(
      tabs,
          (index, item){
        bool pressed = _page == index;
        return MouseCursor(
          child: ListTile(
            title: Text(
              "$item",
              style: TextStyle(
                fontWeight: pressed
                    ? FontWeight.w900
                    : FontWeight.normal,
                fontSize: 16,
              ),
            ),
            onTap: ()=>navigationTapped(index),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: navButtons(),
        ),
      ),

      body: Stack(
        children: <Widget>[
          PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: onPageChanged,
            children: <Widget>[
              Home(),
              Center(child: Text("1")),
              Center(child: Text("2")),
              Center(child: Text("4"))
            ],
          ),

          Positioned(
            top: 20,
            left: 10,
            child: MouseCursor(
              child: IconButton(
                onPressed: ()=>_scaffoldKey.currentState.openDrawer(),
                icon: Icon(
                  Icons.menu,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }
}
