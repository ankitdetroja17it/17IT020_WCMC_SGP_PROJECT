import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:wcmcproject/timeTable.dart';
import 'UI/lib/main.dart';
import 'UI/lib/user.dart';
import 'userpage.dart';
import 'adminpage.dart';
import 'package:wcmcproject/login/uLogin.dart';
import 'package:wcmcproject/login/aLogin.dart';
bool isLoading = false;

void main() {
  runApp(MaterialApp(
    home: splash_screen(),
    debugShowCheckedModeBanner: false,
  ));
}

class splash_screen extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    return SplashScreen(
      seconds: 4,
      backgroundColor: Colors.white,
      image: Image.asset('assets/images/logo.jpg'),
      loaderColor: Colors.black,
      photoSize: 200.0,
      navigateAfterSeconds: AnimatedBottomBar(),
    );
  }
}

class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text("CHARUSAT"),
        ),
        body:Center(
          child: Container(
    child: Column(
    children: <Widget>[
      RaisedButton(
        onPressed:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => selectClass()),
          );
        },
        textColor: Colors.white,
        color: Colors.black,
        padding: const EdgeInsets.all(8.0),
        child: Text("TimeTable"),
      ),
      RaisedButton(

    onPressed:(){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => aLogin()),
      );
    },
          textColor: Colors.white,
          color: Colors.black,
          padding: const EdgeInsets.all(8.0),
    child: Text("Admin"),
    ),
    RaisedButton(
    onPressed: (){

      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => uLogin()),
      );
    },
      textColor: Colors.white,
      color: Colors.black,
      padding: const EdgeInsets.all(8.0),
    child: Text("User"),
    )
    ],
    ),
    ),
        )
    );
  }
}



