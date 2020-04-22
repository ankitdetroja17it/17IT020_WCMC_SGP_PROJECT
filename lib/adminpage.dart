import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:http/http.dart';

import 'globals.dart' as globals;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'data/allViewData.dart';
import 'display/adminAllReport.dart';

bool isLoading = false;

void main() {
  runApp(viewWholeData());
}

class viewWholeData extends StatefulWidget {
  @override
  _viewWholeDataState createState() => _viewWholeDataState();
}

class _viewWholeDataState extends State<viewWholeData> {
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
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => viewReport()),
                          );
                        },
                        textColor: Colors.white,
                        color: Colors.black,
                        padding: const EdgeInsets.all(8.0),
                        child: new Text(
                          "View Today's Report",
                        ),
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
        ));
  }

  Future getData2() async {
    isLoading = true;
    setState(() {});
    var url1 = 'https://resourcewcmc.000webhostapp.com/viewTodayData.php';
    Response response7 = await http.get(url1);
    dataView1 data7 = dataView1.fromJson(jsonDecode(response7.body.toString()));
    print(data7.toJson());
    globals.data7 = data7;
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    getData2();
  }
}
