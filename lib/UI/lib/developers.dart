import 'package:flutter/material.dart';

import 'SizeConfig.dart';

class developerpage extends StatelessWidget{


  final profilephoto = new Container(
      margin: new EdgeInsets.symmetric(
        vertical: 5.0
      ),
      alignment: FractionalOffset.centerLeft,
      child: new Image(
        image: new AssetImage("assets/images/man.png"),
        height: 100.0,
        width: 100.0,
        ),
    );

  final profilecard = new Container(
    height: 200.0,
    margin: new EdgeInsets.only(left: 46.0),
    
    child:Padding(
          padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
          child: Text('Developer Name', 
            style: TextStyle(fontSize:SizeConfig.safeBlockHorizontal)
            ),),
    
    
    decoration: new BoxDecoration(
      color:new Color(0xFFFFFFFF),
      shape:BoxShape.rectangle,
      borderRadius:new BorderRadius.circular(20.0),
      boxShadow: <BoxShadow>[
        new  BoxShadow(
          color: Colors.black,
          blurRadius: 20.0,
          offset: new Offset(0.0, 8.5),
        ),
      ],
    ),
  );


  @override
  Widget build(BuildContext context){
    return new Container(

      height: 110.0,
      margin: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 15.0,
      ),

      child: new Stack(
        children: <Widget>[
          profilecard,
          profilephoto,
        ],
      ),
    );

    

  }
}