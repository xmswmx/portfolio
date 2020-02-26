import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portfolio/screens/home.dart';
import 'package:portfolio/screens/porfolio.dart';
import 'package:portfolio/util/consts.dart';
import 'package:portfolio/widgets/mouse_cursor.dart';

class MyDrawer extends StatelessWidget {
  final int page;

  MyDrawer(this.page);

  final List tabs = [
    {
      "label": "Home",
      "page": Home(),
    },
    {
      "label": "Portfolio",
      "page": Portfolio(),
    },
  ];

  List<Widget> navButtons(BuildContext context){
    return Constants.map(
      tabs,
          (index, item){
        return MouseCursor(
          child: ListTile(
            title: Text(
              "${item['label']}",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 16,
              ),
            ),
            onTap: index == page
                ? ()=>Navigator.pop(context)
                : (){
              Navigator.push(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  child: item["page"],
                ),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(20),
        children: navButtons(context),
      ),
    );
  }
}
