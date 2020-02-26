import 'package:flutter/material.dart';
import 'package:portfolio/util/config.dart';
import 'package:portfolio/widgets/mouse_cursor.dart';
import 'package:portfolio/widgets/myDrawer.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'dart:html' as html;


class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
      ),
      drawer: MyDrawer(1),
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
        itemCount: works.length,
        itemBuilder: (BuildContext context, int index) {
          Map work = works[index];

          Widget text = Container(
            width: ResponsiveWidget.isSmallScreen(context)
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width/2.4,

            height: ResponsiveWidget.isSmallScreen(context)
                ? null
                : MediaQuery.of(context).size.height * 0.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "${work['info']}",
                  textScaleFactor: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),

                SizedBox(height: 20,),
                MouseCursor(
                  child: GestureDetector(
                    onTap: (){
                      html.window.open(work['link'], work['name']);
                    },
                    child: Text(
                      "View on Github",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontFamily: "PoppinsBold",
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );

          Widget image = Container(
            width: ResponsiveWidget.isSmallScreen(context)
                ? MediaQuery.of(context).size.width
                : MediaQuery.of(context).size.width/2.4,
            height: ResponsiveWidget.isSmallScreen(context)
                ? MediaQuery.of(context).size.height * 0.5
                : MediaQuery.of(context).size.height * 0.5,
            child: Image.network(
              work['img'],
              fit: BoxFit.cover,
            ),
          );


          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: ExpansionTile(
                title: Text(
                  "${work['name']}",
                ),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: ResponsiveWidget.isSmallScreen(context)
                        ? Column(
                      children: <Widget>[
                        text,
                        SizedBox(height: 10,),
                        image,
                      ],
                    )
                        : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        text,
                        image
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
