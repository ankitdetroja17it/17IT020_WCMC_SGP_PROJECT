import 'package:flutter/material.dart';
import 'package:wcmcproject/display/adminAllReport.dart';
import '../../adminpage.dart';
import '../../timeTable.dart';
import '../../userpage.dart';
import 'SizeConfig.dart';
import 'developers.dart';
import 'info.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => new _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[900],
        // accentColor: Colors.cyan[600],
      ),
      debugShowCheckedModeBanner: false,
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
              slotcard(
                text: "Slot Table",
                icon: Icons.today,
                warna: Colors.black,
              ),
              evalutioncard(
                text: "Today Evaluation",
                icon: Icons.check_box,
                warna: Colors.black,
              ),
              timetablecard(
                text: "Time Table",
                icon: Icons.slow_motion_video,
                warna: Colors.black,
              ),
              infocard(
                text: "CHARUSAT",
                icon: Icons.info,
                warna: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class slotcard extends StatelessWidget {
  slotcard({this.text, this.icon, this.warna});
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
      MaterialPageRoute(builder: (context) => drop_down()),
    );
    // showModalBottomSheet(
    //   context: context,
    //   builder: (sheetContext) => BottomSheet(
    //     builder: (_) => drop_down(),
    //     onClosing: () {},
    //   ),
    // );
  }
}

class evalutioncard extends StatelessWidget {
  evalutioncard({this.text, this.icon, this.warna});
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
      MaterialPageRoute(builder: (context) => viewWholeData()),
    );
    // showModalBottomSheet(
    //   context: context,
    //   builder: (sheetContext) => BottomSheet(
    //     builder: (_) => viewWholeData(),
    //     onClosing: () {},
    //   ),
    // );
  }
}

class timetablecard extends StatelessWidget {
  timetablecard({this.text, this.icon, this.warna});
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
      MaterialPageRoute(builder: (context) => selectClass()),
    );
    // showModalBottomSheet(
    //   context: context,
    //   builder: (sheetContext) => BottomSheet(
    //     builder: (_) => selectClass(),
    //     onClosing: () {},
    //   ),
    // );
  }
}

class infocard extends StatelessWidget {
  infocard({this.text, this.icon, this.warna});
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
      MaterialPageRoute(builder: (context) => infopage()),
    );
    // showModalBottomSheet(
    //   context: context,
    //   builder: (sheetContext) => BottomSheet(
    //     builder: (_) => infopage(),
    //     onClosing: () {},
    //   ),
    // );
  }
}
