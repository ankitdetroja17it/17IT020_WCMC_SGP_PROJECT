import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'data/fifth_slot.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'dart:convert';
import 'data/first_slot.dart';
import 'data/second_slot.dart';
import 'data/third_slot.dart';
import 'data/fourth_slot.dart';
import 'data/sixth_slot.dart';
import 'globals.dart' as globals;

import 'test.dart';

bool isLoading = false;
void main() {
  runApp(drop_down());
}

class drop_down extends StatefulWidget {
  @override
  _drop_downState createState() => _drop_downState();
}

class _drop_downState extends State<drop_down> {
  String _value;

  submit() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DataTableWidget()),
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
        ),),
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
                              Text("9:10-10:10")
                            ],
                          ),
                          value: '9:10-10:10',
                        ),
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_two),
                              Text("10:10-11:10")
                            ],
                          ),
                          value: '10:10-11:10',
                        ),
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_3),
                              Text("12:10-1:10")
                            ],
                          ),
                          value: '12:10-1:10',
                        ),
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_4),
                              Text("1:10-2:10")
                            ],
                          ),
                          value: '1:10-2:10',
                        ),
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_5),
                              Text("2:20-3:20")
                            ],
                          ),
                          value: '2:20-3:20',
                        ),
                        DropdownMenuItem<String>(
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.looks_6),
                              Text("3:20-4:20")
                            ],
                          ),
                          value: '3:20-4:20',
                        ),
                      ],
                      isExpanded: false,
                      onChanged: (String value) {
                        setState(() {
                          _value = value;
                          globals.time = _value;
                          submit();
                        });
                      },
                      hint: Text('Select Time Slot:'),
                      value: _value,
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

  Future getData1() async {
    isLoading = true;
    setState(() {});
    var url1 = 'https://resourcewcmc.000webhostapp.com/firstslot.php';
    Response response1 = await http.get(url1);
    dataResponse1 data1 =
        dataResponse1.fromJson(jsonDecode(response1.body.toString()));
//    print(data1.toJson());
    globals.data1 = data1;
    isLoading = false;
    setState(() {});

    var url2 = 'https://resourcewcmc.000webhostapp.com/secondslot.php';
    Response response2 = await http.get(url2);
    dataResponse2 data2 =
        dataResponse2.fromJson(jsonDecode(response2.body.toString()));
//    print(data2.toJson());
    globals.data2 = data2;

    var url3 = 'https://resourcewcmc.000webhostapp.com/thirdslot.php';
    Response response3 = await http.get(url3);
    dataResponse3 data3 =
        dataResponse3.fromJson(jsonDecode(response3.body.toString()));
//    print(data3.toJson());
    globals.data3 = data3;

    var url4 = 'https://resourcewcmc.000webhostapp.com/fourthslot.php';
    Response response4 = await http.get(url4);
    dataResponse4 data4 =
        dataResponse4.fromJson(jsonDecode(response4.body.toString()));
//    print(data4.toJson());
    globals.data4 = data4;

    var url5 = 'https://resourcewcmc.000webhostapp.com/fifthslot.php';
    Response response5 = await http.get(url5);
    dataResponse5 data5 =
        dataResponse5.fromJson(jsonDecode(response5.body.toString()));
    //   print(data5.toJson());
    globals.data5 = data5;

    var url6 = 'https://resourcewcmc.000webhostapp.com/sixthslot.php';
    Response response6 = await http.get(url6);
    dataResponse6 data6 =
        dataResponse6.fromJson(jsonDecode(response6.body.toString()));
//    print(data6.toJson());
    globals.data6 = data6;
  }

  @override
  void initState() {
    getData1();
  }
}
