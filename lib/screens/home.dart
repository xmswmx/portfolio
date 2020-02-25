import 'package:flutter/material.dart';
import 'package:portfolio/util/consts.dart';
import 'package:portfolio/widgets/profile_data.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class Home extends StatelessWidget {
  profileImage(context) => Padding(
    padding: ResponsiveWidget.isSmallScreen(context)
        ? EdgeInsets.symmetric(horizontal: 20)
        : EdgeInsets.all(0.0),
    child: Container(
      height: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.height * 0.5
          : MediaQuery.of(context).size.height,
      width: ResponsiveWidget.isSmallScreen(context)
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.width/2,
      child: Image.asset(
        "assets/images/me.jpeg",
        fit: BoxFit.cover,
      ),
    ),
  );



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ResponsiveWidget(
        largeScreen: Row(
          children: <Widget>[ProfileData(), profileImage(context)],
        ),
        smallScreen: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              profileImage(context),
              SizedBox(
                height: 40,
              ),
              ProfileData(),
            ],
          ),
        ),
      ),
    );
  }
}