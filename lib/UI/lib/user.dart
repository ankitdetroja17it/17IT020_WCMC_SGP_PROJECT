
import 'package:flutter/material.dart';
import 'package:wcmcproject/login/aLogin.dart';
import 'package:wcmcproject/login/uLogin.dart';

import 'SizeConfig.dart';
import 'developers.dart';

class userpage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black26,
      body: Container(
        
        padding: EdgeInsets.all(15.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            usercard(text: "User Login",icon: Icons.supervised_user_circle,warna: Colors.black,),
            admincard(text: "Admin Login",icon: Icons.account_circle,warna: Colors.black,),
            
          ],
          ),
          
      ),
    ),);
  }
}



class admincard extends StatelessWidget{
  admincard({this.text,this.icon,this.warna});
  final String text;
  final IconData icon;
  final Color warna;
  @override
  Widget build(BuildContext context) {
    return new Container(
     child: Card(
              margin: EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: InkWell(
                onTap: ()=>_onPressed(context),
                splashColor: Colors.blue[900],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      
                      Icon(
                        icon,
                        size: 50.0,
                        color: warna,
                        ),
                      Text(text,style:new TextStyle(fontSize:SizeConfig.safeBlockHorizontal),),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
  
  _onPressed(BuildContext context){
    showModalBottomSheet(
      context: context,
      builder: (sheetContext)=>BottomSheet(
        builder: (_)=>aLogin(),
        onClosing: (){},
      ),
      );
  }

}

class usercard extends StatelessWidget{
  usercard({this.text,this.icon,this.warna});
  final String text;
  final IconData icon;
  final Color warna;
  @override
  Widget build(BuildContext context) {
    return new Container(
     child: Card(
              margin: EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: InkWell(
                onTap: ()=>_onPressed(context),
                splashColor: Colors.blue[900],
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      
                      Icon(
                        icon,
                        size: 50.0,
                        color: warna,
                        ),
                      Text(text,style:new TextStyle(fontSize:SizeConfig.safeBlockHorizontal),),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
  
  _onPressed(BuildContext context){
    showModalBottomSheet(
      context: context,
      builder: (sheetContext)=>BottomSheet(
        builder: (_)=>uLogin(),
        onClosing: (){},
      ),
      );
  }

}