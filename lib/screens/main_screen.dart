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
          child: FlatButton(
            onPressed: ()=>navigationTapped(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "$item",
                  style: TextStyle(
                    fontWeight: pressed
                        ? FontWeight.w900
                        : FontWeight.normal,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 3,),

                pressed
                    ? Container(
                  height: 4,
                  width: 20,
                  decoration: BoxDecoration(
//                    borderRadius: BorderRadius.all(
//                      Radius.circular(5),
//                    ),
                    gradient: LinearGradient(
                      colors: [
                        Theme.of(context).accentColor,
                        Constants.blueAccent,
                      ],
                    ),
                  ),
                ):SizedBox(),
              ],
            ),
          ),
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: navButtons(),
          ),
        )
            : null,
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar()
            : MyAppBar(navButtons()),

        body: PageView(
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
      ),
    );
  }

  void navigationTapped(int page) {
    _pageController.jumpToPage(page);
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
