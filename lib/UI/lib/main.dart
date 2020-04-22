import 'package:flutter/material.dart';
import 'package:wcmcproject/UI/lib/home1.dart';
import 'package:wcmcproject/UI/lib/user.dart';
import 'package:wcmcproject/UI/lib/userdata.dart';
import 'developers.dart';
import 'developerslist.dart';
import 'home.dart';
import 'home.dart';
// import 'loginpage.dart';

void main(List<String> args) {
  
  runApp(new AnimatedBottomBar());
}
class AnimatedBottomBar extends StatefulWidget {
  static final String path = "lib/src/pages/animations/anim4.dart";
  @override
  _AnimatedBottomBarState createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  int _currentPage;
  
  @override
  void initState() {
    _currentPage = 0;
    super.initState();
  }

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
      // appBar: AppBar(
      //   title:
      //   // GradientAppBar('CHARUSAT'),
      //   Center(child: Text("CHARUSAT"),),
      // ),
      backgroundColor: Colors.grey.shade300,
      body: getPage(_currentPage),
      bottomNavigationBar: AnimatedBottomNav(
          currentIndex: _currentPage,
          onChange: (index) {
            setState(() {
              _currentPage = index;
            });
          }),
    ),
    );
  }

  getPage(int page) {
    switch(page) {
      case 0:
        return homePage1(); 
        // Center(child: Container(child: Text("Home Page"),));
      case 1:
        return userdata();
      case 2:
        return developerspanel();
        // new developerslist();
        // return Center(child: Container(child: Text("Menu Page"),));
    }
  }
}

class AnimatedBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onChange;
  const AnimatedBottomNav({Key key, this.currentIndex, this.onChange})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kToolbarHeight,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => onChange(0),
              child: BottomNavItem(
                icon: Icons.home,
                title: "Home",
                isActive: currentIndex == 0,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => onChange(1),
              child: BottomNavItem(
                icon: Icons.verified_user,
                title: "User",
                isActive: currentIndex == 1,
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () => onChange(2),
              child: BottomNavItem(
                icon: Icons.code,
                title: "Developers",
                isActive: currentIndex == 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final bool isActive;
  final IconData icon;
  final Color activeColor;
  final Color inactiveColor;
  final String title;
  const BottomNavItem(
      {Key key,
      this.isActive = false,
      this.icon,
      this.activeColor,
      this.inactiveColor,
      this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      transitionBuilder: (child, animation) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        );
      },
      duration: Duration(milliseconds: 500),
      reverseDuration: Duration(milliseconds: 300),
      child: isActive
          ? Container(
              color: Colors.white,
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: activeColor ?? Theme.of(context).primaryColor,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    width: 9.0,
                    height: 9.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: activeColor ?? Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
            )
          : Icon(
              icon,
              size: 25,
              color: inactiveColor ?? Colors.grey[600],
            ),
    );
  }
}