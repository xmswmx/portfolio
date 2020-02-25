import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:portfolio/util/consts.dart';
import 'package:portfolio/widgets/mouse_cursor.dart';
import 'package:portfolio/widgets/responsive_widget.dart';
import 'dart:html' as html;

class Home extends StatelessWidget {
  profileImage(context) => Container(
    height: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.height * 0.4
        : MediaQuery.of(context).size.width * 0.4,
    width: ResponsiveWidget.isSmallScreen(context)
        ? MediaQuery.of(context).size.width
        : MediaQuery.of(context).size.width * 0.4,
    child: Image.asset(
      "assets/images/me2.jpeg",
      fit: BoxFit.cover,
    ),
  );

  profileData(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      RichText(
        text: TextSpan(
          text: "Hi i'm ".toUpperCase(),
          style: TextStyle(
            fontFamily: "Crete",
            fontSize: 30,
            color: Theme.of(context).accentColor,
          ),
          children: [
            TextSpan(
              text: "Festus Olusegun".toUpperCase(),
              style: TextStyle(
                fontFamily: "Crete",
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Constants.blueAccent,
              ),
            ),
          ],
        ),
      ),

      Row(
        children: <Widget>[
          Text(
            "FullStack Developer - ".toUpperCase(),
            textScaleFactor: 1,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              color: Theme.of(context).accentColor,
            ),
          ),

          Text(
            "3 Years of experience".toUpperCase(),
            textScaleFactor: 1,
            style: TextStyle(
              fontWeight: FontWeight.w200,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),

      SizedBox(height: 20,),
      Container(
        width:  ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.width
            : MediaQuery.of(context).size.width * 0.3,
        height: .5,
        color: Colors.grey,
      ),
      SizedBox(height: 20,),
      RichText(
        text: TextSpan(
          text: "A young ",
          style: TextStyle(
            fontFamily: "Crete",
            color: Theme.of(context).textTheme.caption.color,
            fontSize: 20,
          ),
          children: [
            TextSpan(
              text: "FullStack Developer",
              style: TextStyle(
                fontFamily: "Crete",
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
              ),
            ),

            TextSpan(
              text: " with skills \nfor Mobile and Web. I work with \nvarious technologies like",
              style: TextStyle(
                fontFamily: "Crete",
                color: Theme.of(context).textTheme.caption.color,
              ),
            ),

            TextSpan(
              text: " Flutter, Node.js \nand some more",
              style: TextStyle(
                fontFamily: "Crete",
                color: Theme.of(context).accentColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      SizedBox(
        height: 20,
      ),

      Text(
        "Social network",
        style: TextStyle(
          fontSize: 14,
          color: Theme.of(context).textTheme.caption.color,
        ),
      ),

      SizedBox(
        height: 5,
      ),

      Row(
        children: <Widget>[
          MouseCursor(
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                FontAwesome.github,
                size: 30,
              ),
            ),
          ),

          SizedBox(width: 20,),

          MouseCursor(
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                FontAwesome.whatsapp,
                size: 30,
                color: Color(0xff25D366),
              ),
            ),
          ),

          SizedBox(width: 20,),

          MouseCursor(
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                FontAwesome.facebook,
                size: 30,
                color: Color(0xff3b5999),
              ),
            ),
          ),

          SizedBox(width: 20,),

          MouseCursor(
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                FontAwesome.envelope,
                size: 30,
                color: Colors.red,
              ),
            ),
          ),

          SizedBox(width: 20,),

          MouseCursor(
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                FontAwesome.medium,
                size: 30,
                color: Color(0xff02b875),
              ),
            ),
          ),

          SizedBox(width: 20,),

          MouseCursor(
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                FontAwesome.telegram,
                size: 30,
                color: Color(0xff0088cc),
              ),
            ),
          ),

          SizedBox(width: 20,),

          MouseCursor(
            child: GestureDetector(
              onTap: (){},
              child: Icon(
                FontAwesome.twitter,
                size: 30,
                color: Color(0xff55acee),
              ),
            ),
          ),
        ],
      ),

      SizedBox(
        height: 30,
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          MouseCursor(
            child: Container(
              width: 150,
              child: FlatButton(
                shape: StadiumBorder(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Resume".toUpperCase(),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Theme.of(context).accentColor,
                onPressed: () {
                  html.window.open(
                      "https://google-developers.appspot.com/community/experts/directory/profile/profile-pawan_kumar",
                      "GDE");
                },
                padding: EdgeInsets.all(10),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          MouseCursor(
            child: Container(
              width: 150,
              child: OutlineButton(
                borderSide: BorderSide(
                  color: Theme.of(context).accentColor,
                  width: 1,
                ),
                shape: StadiumBorder(),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Say Hi".toUpperCase(),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                color: Theme.of(context).accentColor,
                onPressed: () {
                  html.window.open("mailto:guruliciousjide@mail.com", "Mail");
                },
                padding: EdgeInsets.all(10),
              ),
            ),
          )
        ],
      ),

      SizedBox(
        height: 30,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: Duration(seconds: 1),
      padding: EdgeInsets.symmetric(horizontal: ResponsiveWidget.isSmallScreen(context)
          ? 20
          : MediaQuery.of(context).size.height * 0.1),
      child: ResponsiveWidget(
        largeScreen: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[profileImage(context), profileData(context)],
        ),
        smallScreen: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              profileImage(context),
              SizedBox(
                height: 40,
              ),
              profileData(context),
            ],
          ),
        ),
      ),
    );
  }
}