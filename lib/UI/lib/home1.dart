import 'package:flutter/material.dart';
import 'package:wcmcproject/login/aLogin.dart';
import 'package:wcmcproject/login/uLogin.dart';

import 'SizeConfig.dart';
import 'developers.dart';
import 'info.dart';

class homePage1 extends StatefulWidget {
  @override
  _homePageState createState() => new _homePageState();
}

class _homePageState extends State<homePage1> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[900],
        // accentColor: Colors.cyan[600],
      ),
      home: Scaffold(
        
        appBar: AppBar(
        title:
        // GradientAppBar('CHARUSAT'),
        Center(child: Text("CHARUSAT"),),
      ),
        backgroundColor: Colors.black26,
        body: Container(
          padding: EdgeInsets.all(15.0),
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              usercard(
                text: "User Login",
                icon: Icons.supervised_user_circle,
                warna: Colors.black,
              ),
              admincard(
                text: "Admin Login",
                icon: Icons.account_circle,
                warna: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class admincard extends StatelessWidget {
  admincard({this.text, this.icon, this.warna});
  final String text;
  final IconData icon;
  final Color warna;
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Card(
        margin: EdgeInsets.all(10.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: InkWell(
          onTap: () => _onPressed(context),
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
                Text(
                  text,
                  style:
                      new TextStyle(fontSize: SizeConfig.safeBlockHorizontal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _onPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => aLogin()),
    );
    // showModalBottomSheet(
    //   context: context,
    //   builder: (sheetContext)=>BottomSheet(
    //     builder: (_)=>aLogin(),
    //     onClosing: (){},
    //   ),
    // );
  }
}

class usercard extends StatelessWidget {
  usercard({this.text, this.icon, this.warna});
  final String text;
  final IconData icon;
  final Color warna;
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Card(
        margin: EdgeInsets.all(10.0),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: InkWell(
          onTap: () => _onPressed(context),
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
                Text(
                  text,
                  style:
                      new TextStyle(fontSize: SizeConfig.safeBlockHorizontal),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _onPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => uLogin()),
    );
    // showModalBottomSheet(
    //   context: context,
    //   builder: (sheetContext)=>BottomSheet(
    //     builder: (_)=>uLogin(),
    //     onClosing: (){},
    //   ),
    //   );
  }
}
