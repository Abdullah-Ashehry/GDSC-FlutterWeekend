// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

String intamount = '1 Pill';

class AddPlan extends StatefulWidget {
  const AddPlan({Key? key}) : super(key: key);

  @override
  _AddPlanState createState() => _AddPlanState();
}

class _AddPlanState extends State<AddPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 35, 55, 15),
            child: Text("Add Plan",
                style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.black,
                        letterSpacing: 0.5,
                        fontSize: 60,
                        fontWeight: FontWeight.bold))),
          ),
          Padding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Pill Name",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.5,
                              fontSize: 16))),
                  Container(
                    width: 300.0,
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon:
                              SvgPicture.asset('Assests/GroupIcons.svg'),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.black),
                          hintText: "Advil",
                          fillColor: Colors.grey[300]),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 175, 0),
                        child: Text("Amount",
                            style: GoogleFonts.roboto(
                                // ignore: prefer_const_constructors
                                textStyle: TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 0.5,
                                    fontSize: 16))),
                      ),
                      Text('Durration',
                          style: GoogleFonts.roboto(
                              // ignore: prefer_const_constructors
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 0.5,
                                  fontSize: 16)))
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                        child: Container(
                          width: 150.0,
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                filled: true,
                                hintStyle: TextStyle(color: Colors.black),
                                hintText: "1 Pill",
                                fillColor: Colors.grey[300]),
                          ),
                        ),
                      ),
                      Container(
                        width: 150.0,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.black),
                              hintText: "1 Day",
                              fillColor: Colors.grey[300]),
                        ),
                      ),
                    ],
                  ),
                  Text("Time with Food",
                      style: GoogleFonts.roboto(
                          // ignore: prefer_const_constructors
                          textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.5,
                              fontSize: 16))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey[300],
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('Assests/GroupIcons.svg'),
                              SvgPicture.asset('Assests/plate.svg'),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.grey[300],
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('Assests/plate.svg'),
                              SvgPicture.asset('Assests/GroupIcons.svg'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Text("Notifcations",
                      style: GoogleFonts.roboto(
                          // ignore: prefer_const_constructors
                          textStyle: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.5,
                              fontSize: 16))),
                  Row(
                    children: [
                      Container(
                        width: 300,
                        height: 50,
                        color: Colors.grey[300],
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.notification_add,
                                color: Colors.black,
                              ),
                              Text("Time for notfaction",
                                  style: GoogleFonts.roboto(
                                      // ignore: prefer_const_constructors
                                      textStyle: TextStyle(
                                          color: Colors.black,
                                          letterSpacing: 0.5,
                                          fontSize: 16)))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: IconButton(
                              onPressed: () {},
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                Icons.add,
                                color: Colors.lightGreen[600],
                                size: 40,
                              )),
                        ),
                      )
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                          width: 300,
                          height: 50,
                          color: Colors.lightGreen[600],
                          child: Center(
                              child: Text("ADD",
                                  style: GoogleFonts.khula(
                                      // ignore: prefer_const_constructors
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          letterSpacing: 0.5,
                                          fontSize: 40))))))
                ],
              ),
              padding: EdgeInsets.fromLTRB(35, 0, 20, 0))
        ],
      ),
    );
  }
}
