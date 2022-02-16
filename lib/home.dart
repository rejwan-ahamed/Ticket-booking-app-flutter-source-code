import 'dart:ui';
import 'package:bus_ticket/account.dart';
import 'package:bus_ticket/history.dart';
import 'package:bus_ticket/info.dart';
import 'package:bus_ticket/site.dart';
import 'package:bus_ticket/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:matcher/matcher.dart';

void main() {
  runApp(MaterialApp(
    title: "Bus ticket",
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  // logick  start here
  bool click1 = true;
  bool click2 = true;
  bool click3 = true;
  bool click4 = true;
  bool click5 = true;
  // logick end here
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // main container
        Container(
          color: Color.fromRGBO(238, 242, 252, 1),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {},
                    child: SvgPicture.asset("assets/home_active.svg"),
                    minWidth: 20,
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => History()));
                    },
                    child: SvgPicture.asset("assets/history.svg"),
                    minWidth: 20,
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Ticket()));
                    },
                    child: SvgPicture.asset("assets/ticket.svg"),
                    minWidth: 20,
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Info()));
                    },
                    child: SvgPicture.asset("assets/info.svg"),
                    minWidth: 20,
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Account()));
                    },
                    child: SvgPicture.asset("assets/account.svg"),
                    minWidth: 20,
                  ),
                ],
              ),
            ),
          ),
        ),

        // transportation select section
        Padding(
          padding: const EdgeInsets.only(top: 100, left: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Bus section
              // ignore: deprecated_member_use
              FlatButton(
                height: 0,
                minWidth: 0,
                padding: EdgeInsets.only(left: 0, right: 0),
                onPressed: () {
                  setState(() {
                    click1 = !click1;
                  });
                },
                child: Container(
                  width: 57,
                  height: 68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: (click1 == false) ? Color(0xffff634f) : Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/bus_icon.svg",
                        color: (click1 == false)
                            ? Colors.white
                            : Color(0xffb5c8fd),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Bus",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: (click1 == false)
                              ? Colors.white
                              : Color(0xffb5c8fd),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Train section
              // ignore: deprecated_member_use
              FlatButton(
                height: 0,
                minWidth: 0,
                padding: EdgeInsets.only(left: 0, right: 0),
                onPressed: () {
                  setState(() {
                    click2 = !click2;
                  });
                },
                child: Container(
                  width: 57,
                  height: 68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: (click2 == false) ? Colors.white : Color(0xffff634f),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/train_icon.svg",
                        color: (click2 == false)
                            ? Color(0xffb5c8fd)
                            : Colors.white,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Train",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: (click2 == false)
                              ? Color(0xffb5c8fd)
                              : Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Plain section
              // ignore: deprecated_member_use
              FlatButton(
                height: 0,
                minWidth: 0,
                padding: EdgeInsets.only(left: 0, right: 0),
                onPressed: () {
                  setState(() {
                    click3 = !click3;
                  });
                },
                child: Container(
                  width: 57,
                  height: 68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: (click3 == false) ? Color(0xffff634f) : Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/plain_icon.svg",
                        color: (click3 == false)
                            ? Colors.white
                            : Color(0xffb5c8fd),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Plane",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: (click3 == false)
                              ? Colors.white
                              : Color(0xffb5c8fd),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Ship section
              // ignore: deprecated_member_use
              FlatButton(
                height: 0,
                minWidth: 0,
                padding: EdgeInsets.only(left: 0, right: 0),
                onPressed: () {
                  setState(() {
                    click4 = !click4;
                  });
                },
                child: Container(
                  width: 57,
                  height: 68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: (click4 == false) ? Color(0xffff634f) : Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/ship_icon.svg",
                        color: (click4 == false)
                            ? Colors.white
                            : Color(0xffb5c8fd),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Ship",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: (click4 == false)
                              ? Colors.white
                              : Color(0xffb5c8fd),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Hot air baloon section
              // ignore: deprecated_member_use
              FlatButton(
                height: 0,
                minWidth: 0,
                padding: EdgeInsets.only(left: 0, right: 0),
                onPressed: () {
                  setState(() {
                    click5 = !click5;
                  });
                },
                child: Container(
                  width: 57,
                  height: 68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: (click5 == false) ? Color(0xffff634f) : Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/ari_icon.svg",
                        color: (click5 == false)
                            ? Colors.white
                            : Color(0xffb5c8fd),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Hot air",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: (click5 == false)
                              ? Colors.white
                              : Color(0xffb5c8fd),
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // offer section

        Padding(
          padding: const EdgeInsets.only(
            top: 190,
          ),
          child: Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 264,
                    height: 115,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 264,
                              height: 115,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ))),
                      Positioned(
                          top: 58,
                          left: 13,
                          child: Text(
                            'Noakhali',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(84, 84, 84, 1),
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          )),
                      Positioned(
                          top: 14,
                          left: 13,
                          child: Container(
                              width: 241,
                              height: 75,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 231,
                                        height: 20,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: -4,
                                              left: 0,
                                              child: Text(
                                                'Today, 2:30 pm',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        165, 165, 165, 1),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight: FontWeight.w500,
                                                    height: 2),
                                              )),
                                          Positioned(
                                              top: 8,
                                              left: 215,
                                              child: Container(
                                                  width: 6,
                                                  height: 6,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                6, 6)),
                                                  ))),
                                          Positioned(
                                              top: 8,
                                              left: 225,
                                              child: Container(
                                                  width: 6,
                                                  height: 6,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                6, 6)),
                                                  ))),
                                        ]))),
                                Positioned(
                                    top: 44,
                                    left: 190,
                                    child: Text(
                                      'Dhaka',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(84, 84, 84, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    )),
                                Positioned(
                                  top: 30,
                                  left: 100,
                                  child: SvgPicture.asset('assets/arrow1.svg',
                                      semanticsLabel: 'arrow1'),
                                ),
                              ]))),
                      Positioned(
                          top: 78,
                          left: 16,
                          child: Text(
                            '2399 TK',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1.3333333333333333),
                          )),
                      Positioned(
                          top: 79,
                          left: 218,
                          child: Container(
                            width: 20,
                            height: 20,
                            child: SvgPicture.asset("assets/plus.svg"),
                          )),
                    ])),
                Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 264,
                    height: 115,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 264,
                              height: 115,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ))),
                      Positioned(
                          top: 58,
                          left: 13,
                          child: Text(
                            'Dhaka',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(84, 84, 84, 1),
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          )),
                      Positioned(
                          top: 14,
                          left: 13,
                          child: Container(
                              width: 241,
                              height: 75,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: -4,
                                    left: 0,
                                    child: Container(
                                        width: 231,
                                        height: 20,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: 0,
                                              left: 0,
                                              child: Text(
                                                'Today, 2:30 pm',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        165, 165, 165, 1),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight: FontWeight.w500,
                                                    height: 2),
                                              )),
                                          Positioned(
                                              top: 8,
                                              left: 215,
                                              child: Container(
                                                  width: 6,
                                                  height: 6,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                6, 6)),
                                                  ))),
                                          Positioned(
                                              top: 8,
                                              left: 225,
                                              child: Container(
                                                  width: 6,
                                                  height: 6,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                6, 6)),
                                                  ))),
                                        ]))),
                                Positioned(
                                    top: 44,
                                    left: 190,
                                    child: Text(
                                      'Barisal',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(84, 84, 84, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    )),
                                Positioned(
                                  top: 30,
                                  left: 100,
                                  child: SvgPicture.asset('assets/arrow1.svg',
                                      semanticsLabel: 'arrow1'),
                                ),
                              ]))),
                      Positioned(
                          top: 78,
                          left: 16,
                          child: Text(
                            '2000 TK',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1.3333333333333333),
                          )),
                      Positioned(
                          top: 79,
                          left: 218,
                          child: Container(
                            width: 20,
                            height: 20,
                            child: SvgPicture.asset("assets/plus.svg"),
                          )),
                    ])),
                Container(
                    margin: EdgeInsets.only(left: 20),
                    width: 264,
                    height: 115,
                    child: Stack(children: <Widget>[
                      Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                              width: 264,
                              height: 115,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ))),
                      Positioned(
                          top: 58,
                          left: 13,
                          child: Text(
                            'Chittagong',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(84, 84, 84, 1),
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.w500,
                                height: 0),
                          )),
                      Positioned(
                          top: 14,
                          left: 13,
                          child: Container(
                              width: 241,
                              height: 75,
                              child: Stack(children: <Widget>[
                                Positioned(
                                    top: 0,
                                    left: 0,
                                    child: Container(
                                        width: 231,
                                        height: 20,
                                        child: Stack(children: <Widget>[
                                          Positioned(
                                              top: -4,
                                              left: 0,
                                              child: Text(
                                                'Today, 2:30 pm',
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        165, 165, 165, 1),
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    letterSpacing:
                                                        0 /*percentages not used in flutter. defaulting to zero*/,
                                                    fontWeight: FontWeight.w500,
                                                    height: 2),
                                              )),
                                          Positioned(
                                              top: 8,
                                              left: 215,
                                              child: Container(
                                                  width: 6,
                                                  height: 6,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                6, 6)),
                                                  ))),
                                          Positioned(
                                              top: 8,
                                              left: 225,
                                              child: Container(
                                                  width: 6,
                                                  height: 6,
                                                  decoration: BoxDecoration(
                                                    color: Color.fromRGBO(
                                                        0, 0, 0, 1),
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.elliptical(
                                                                6, 6)),
                                                  ))),
                                        ]))),
                                Positioned(
                                    top: 44,
                                    left: 190,
                                    child: Text(
                                      'Dhaka',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Color.fromRGBO(84, 84, 84, 1),
                                          fontFamily: 'Poppins',
                                          fontSize: 18,
                                          letterSpacing:
                                              0 /*percentages not used in flutter. defaulting to zero*/,
                                          fontWeight: FontWeight.w500,
                                          height: 0),
                                    )),
                                Positioned(
                                  top: 30,
                                  left: 100,
                                  child: SvgPicture.asset('assets/arrow1.svg',
                                      semanticsLabel: 'arrow1'),
                                ),
                              ]))),
                      Positioned(
                          top: 78,
                          left: 16,
                          child: Text(
                            '2600 TK',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                letterSpacing:
                                    0 /*percentages not used in flutter. defaulting to zero*/,
                                fontWeight: FontWeight.bold,
                                height: 1.3333333333333333),
                          )),
                      Positioned(
                          top: 79,
                          left: 218,
                          child: Container(
                            width: 20,
                            height: 20,
                            child: SvgPicture.asset("assets/plus.svg"),
                          )),
                    ])),
              ],
            ),
          ),
        ),
// offer section end here

// Info section start here
        Positioned(
          top: 330,
          left: 100,
          child: Container(
            width: 130,
            height: 51.33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              color: Color(0xffdde5fc),
            ),
            child: Center(
                child: Text(
              "            Local",
              style: TextStyle(
                color: Color(0xff96b2ff),
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            )),
          ),
        ),
        Positioned(
          top: 330,
          left: 20,
          child: Container(
            width: 130,
            height: 51.33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
              ),
              color: Colors.white,
            ),
            child: Center(
                child: Text(
              "Intercity",
              style: TextStyle(
                color: Color(0xffff634f),
                fontSize: 15,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
              ),
            )),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 380, left: 20, right: 20),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 385,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 30),
                    child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "setect",
                            labelText: "From",
                            labelStyle: TextStyle(fontWeight: FontWeight.w500),
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: SvgPicture.asset(
                                "assets/from.svg",
                                width: 35,
                              ),
                            ))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 30),
                    child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "setect",
                            labelText: "To",
                            labelStyle: TextStyle(fontWeight: FontWeight.w500),
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: SvgPicture.asset(
                                "assets/to.svg",
                                width: 35,
                              ),
                            ))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 30),
                    child: TextFormField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                            hintText: "setect",
                            labelText: "Date",
                            labelStyle: TextStyle(fontWeight: FontWeight.w500),
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: SvgPicture.asset(
                                "assets/date.svg",
                                width: 35,
                              ),
                            ))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 30),
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: "setect",
                            labelText: "Passengers",
                            labelStyle: TextStyle(fontWeight: FontWeight.w500),
                            icon: Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: SvgPicture.asset(
                                "assets/persons.svg",
                                width: 35,
                              ),
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      height: 0,
                      minWidth: 0,
                      padding: EdgeInsets.only(left: 0, right: 0),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Site()));
                      },
                      child: Container(
                        width: 343,
                        height: 66.50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffff634f),
                        ),
                        child: Center(
                            child: Text(
                          "Serach",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

// Info section end here

        // top container
        Container(
          height: 250,
          // color: Color.fromRGBO(255, 255, 255, 1),
          // top title
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ticket",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 8,
                              height: 8,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            width: 8,
                            height: 8,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
