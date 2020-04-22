import 'package:flutter/material.dart';
class userdata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        // GradientAppBar('CHARUSAT'),
        Center(child: Text("CHARUSAT"),),
      ),
      // // appBar: AppBar(
      // //   title: Text("Building layouts"),
      // // ),
      // body: Text( 'Coming Soon',
      //   textAlign: TextAlign.justify,
      //   overflow: TextOverflow.ellipsis,
      //   maxLines: 30,
      //   style: TextStyle(
      //                   color: Colors.black,
      //                   // fontWeight: FontWeight.bold,
      //                   fontSize: 16.0)
      // ),
      body: ListView(
        children: <Widget>[
          Container(
            // decoration: BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [Color.fromRGBO(1, 89, 99, 1.0), Colors.grey],
            //     begin: Alignment.bottomLeft,
            //     end: Alignment.topRight,
            //   ),
            // ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 200.0, bottom: 10.0),
                    child: Text("User Profile Page",
                        style: TextStyle(
                            color: Colors.black,
                            
                            fontSize: 20.0)),
                  ),
                ],
              ),
            ),
            //here
          ),
        ],
      ),
    );
  }
}
