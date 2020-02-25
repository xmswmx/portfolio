import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{

  final List navButtons;

  MyAppBar(this.navButtons);

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.red,
      height: 60,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 20,
              backgroundColor: Theme.of(context).accentColor,
              backgroundImage: AssetImage("assets/images/me2.jpeg"),
            ),


            Row(
              children: navButtons,
            ),
          ],
        ),
      ),
    );
  }

  Size get preferredSize {
    return new Size.fromHeight(60.0);
  }
}
