import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:myprescription/pages/addplan.dart';
import 'package:myprescription/pages/homepage.dart';
import 'package:myprescription/pages/login.dart';

GlobalKey globalKey = GlobalKey(debugLabel: 'btm_app_bar');

class HomeContainer extends StatefulWidget {
  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  List<Widget> screens = [
    MyHomePage(),
    LoginPage(),
    Container(),
  ];

  late Widget currentScreen;

  @override
  void initState() {
    super.initState();

    currentScreen = screens[0];
  }

  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        key: globalKey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Settings",
          ),
        ],
        onTap: (value) {
          setState(() {
            print(value);
            index = value;
            currentScreen = screens[index];
          });
        },
        currentIndex: index,
      ),
      body: currentScreen,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          index = 1;

          currentScreen = screens[index];

          globalKey.currentState!.setState(() {});
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
