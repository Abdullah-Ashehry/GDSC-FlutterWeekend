import 'package:curved_nav_bar/curved_bar/curved_action_bar.dart';
import 'package:curved_nav_bar/fab_bar/fab_bottom_app_bar_item.dart';
import 'package:curved_nav_bar/flutter_curved_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:myprescription/pages/homepage.dart';

class HomeContainer extends StatefulWidget {
  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  List<Widget> screens = [
    MyHomePage(),
    Container(
      child: Text("hi"),
    ),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
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
          });
        },
        currentIndex: index,
      ),
      body: screens[index],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
