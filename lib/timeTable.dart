import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'data/allTimeTable.dart';
import 'globals.dart' as globals;
import 'display/viewTimeTable.dart';

bool isLoading = false;

void main() {
  runApp(selectClass());
}

class selectClass extends StatefulWidget {
  @override
  _selectClassState createState() => _selectClassState();
}

class _selectClassState extends State<selectClass> {
  String _class;
  submit() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => viewTimeTable(_class)),
    );
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([
    //   DeviceOrientation.portraitUp,
    //   DeviceOrientation.portraitDown,
    // ]);
    
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.black,
      //   title: Text("CHARUSAT"),
      // ),
      
      appBar: AppBar(
        title:
            // GradientAppBar('CHARUSAT'),
            Center(
          child: Text("CHARUSAT"),
        ),
      ),
      body: Stack(
        children: <Widget>[
          !isLoading
              ? Container(
                  width: double.infinity,
                  height: double.infinity,
                  alignment: Alignment.center,
                  child: Center(
                    child: DropdownButton<String>(
                      items: [
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_one),
                              Text("2IT-1")
                            ],
                          ),
                          value: '2IT-1',
                        ),
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_two),
                              Text("2IT-2")
                            ],
                          ),
                          value: '2IT-2',
                        ),
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_3),
                              Text("4IT-1")
                            ],
                          ),
                          value: '4IT-1',
                        ),
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_4),
                              Text("4IT-2")
                            ],
                          ),
                          value: '4IT-2',
                        ),
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_5),
                              Text("6IT-1")
                            ],
                          ),
                          value: '6IT-1',
                        ),
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_6),
                              Text("6IT-2")
                            ],
                          ),
                          value: '6IT-2',
                        ),
                      ],
                      isExpanded: false,
                      onChanged: (String value) {
                        setState(() {
                          _class = value;
                          globals.classOpt = _class;
                          submit();
                        });
                      },
                      hint: Text('Select Class:'),
                      value: _class,
                      underline: Container(
                        decoration: const BoxDecoration(
                            border:
                                Border(bottom: BorderSide(color: Colors.grey))),
                      ),
                      style: TextStyle(fontSize: 30.0, color: Colors.black),
                      iconEnabledColor: Colors.pink,
                      iconSize: 40.0,
                    ),
                  ),
                )
              : Container(),
          Container(
            child: isLoading
                ? Container(
                    width: double.infinity,
                    height: double.infinity,
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  )
                : Container(),
          )
        ],
      ),
    );
  }

  Future getData3() async {
    isLoading = true;
    setState(() {});
    var url1 = 'https://resourcewcmc.000webhostapp.com/timeTable.php';
    Response response8 = await http.get(url1);
    timeTableView data8 =
        timeTableView.fromJson(jsonDecode(response8.body.toString()));
    print(data8.toJson());
    globals.data8 = data8;
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    getData3();
  }
}
