import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:portfolio/util/config.dart';
import 'package:portfolio/util/consts.dart';
import 'package:portfolio/widgets/mouse_cursor.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'dart:html' as html;


class ProfileData extends StatelessWidget {
  final List social = [
    {
      "icon": FontAwesome.github,
      "link": user.contact.github,
    },
    {
      "icon": FontAwesome.twitter,
      "link": user.contact.twitter,
    },
    {
      "icon": FontAwesome.envelope,
      "link": user.contact.email,
    },
    {
      "icon": FontAwesome.medium,
      "link": user.contact.medium,
    },
    {
      "icon": FontAwesome.telegram,
      "link": user.contact.telegram,
    },
    {
      "icon": FontAwesome.whatsapp,
      "link": user.contact.whatsapp,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.5
          : MediaQuery.of(context).size.height,
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width/2,
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 0, 60, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              SizedBox(
                height: ResponsiveWidget.isSmallScreen(context)
                    ? 0
                    : MediaQuery.of(context).size.height/4,
              ),

              Text(
                "${user.nickname}".toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 45,
                ),
              ),

              SizedBox(height: 60,),

              Text(
                "Hi, my name is ${user.name}",
                textScaleFactor: 1.3,
              ),

              SizedBox(height: 20,),

              Text(
                "I am a Software developer. I mostly focus on Mobile development with Flutter but i am also proficient with Node.js for Backend developement.",
                textScaleFactor: 1.3,
              ),

              SizedBox(
                height: 40,
              ),

              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Row(
                  children: Constants.map(
                    social,
                        (index, item){
                      return Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: MouseCursor(
                          child: GestureDetector(
                            onTap: (){
                              html.window.open(item['link'], "JideGuru");
                            },
                            child: Icon(
                              item['icon'],
                              size: 20,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
