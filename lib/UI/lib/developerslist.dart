// import 'package:bottomnavigationbar/developers.dart';
import 'package:flutter/material.dart';

class developerspanel extends StatelessWidget{
  String text ="17IT018 Deep Desai";
  String text1 = "17IT013 Dharmesh Chauhan";
  String text2 = "17IT020 Ankit Detroja";
  String text3 = "17IT022 Smit Dhareiya";
  String text4 = "17IT07 Archna Bharvadiya";
  String sir = "Pritesh Prajapati";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title:
        // GradientAppBar('CHARUSAT'),
        Center(child: Text("CHARUSAT"),),
      ),
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
                    margin: EdgeInsets.only(top: 100.0, bottom: 10.0),
                    child: Text("Made BY:",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0)),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("17IT007 Archana Bharavadia",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),

                              Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("17IT013 Dharmesh Chauhan",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("17IT018 Deep Desai",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("17IT020 Ankit Detroja",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("17IT022 Smit Dharaiya",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),
                  
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Instructed BY:",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0))),
                  Container(
                      margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Text("Pritesh Prajapati",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 19.0))),            
                  
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
