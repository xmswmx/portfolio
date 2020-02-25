import 'package:flutter/material.dart';
import 'package:portfolio/widgets/myDrawer.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
      ),
      drawer: MyDrawer(1),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: <Widget>[

            ExpansionTile(
              title: Text(
                "FlutterEbookApp",
              ),
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text("SUmammry"),
                    
                    Image.asset("assets/images/me.jpeg")
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
