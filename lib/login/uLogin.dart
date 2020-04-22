import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:wcmcproject/UI/lib/home.dart';

import '../userpage.dart';

void main() {
  runApp(MaterialApp(
    home: uLogin(),
  ));
}

class uLogin extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<uLogin> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          title: Text("CHARUSAT"),
        ),
        body: 
         Padding(
          

            padding: EdgeInsets.all(50),
            // SingleChildScrollView(
            child: ListView(
            //   shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'User',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.all(10),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
//                FlatButton(
//                  onPressed: (){
//                    //forgot password screen
//                  },
//                  textColor: Colors.blue,
//                  child: Text('Forgot Password'),
//                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue[900],
                      child: Text('Login'),
                      onPressed: () {
//                        print(nameController.text);
//                        print(passwordController.text);
                      if(nameController.text=="user" && passwordController.text=="user"){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => homePage()),
                        );
                      }
                      else
                        {
                          Fluttertoast.showToast(
                              msg: "Try Again",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER,
                              timeInSecForIosWeb: 1,
                              backgroundColor: Colors.red,
                              textColor: Colors.white,
                              fontSize: 16.0
                          );

                        }
                      },
                    )),
//                Container(
//                    child: Row(
//                      children: <Widget>[
//                        Text('Does not have account?'),
//                        FlatButton(
//                          textColor: Colors.blue,
//                          child: Text(
//                            'Sign in',
//                            style: TextStyle(fontSize: 20),
//                          ),
//                          onPressed: () {
//                            //signup screen
//                          },
//                        )
//                      ],
//                      mainAxisAlignment: MainAxisAlignment.center,
//                    ))
              ],
            ),
            ),
            );
            // );
  }
}