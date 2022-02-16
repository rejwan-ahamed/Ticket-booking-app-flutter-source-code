import 'dart:ui';
import 'package:bus_ticket/account.dart';
import 'package:bus_ticket/home.dart';
import 'package:bus_ticket/info.dart';
import 'package:bus_ticket/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:matcher/matcher.dart';

void main() {
  runApp(MaterialApp(
    title: "Bus ticket",
    debugShowCheckedModeBanner: false,
    home: History(),
  ));
}

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: SvgPicture.asset("assets/home.svg"),
                    minWidth: 20,
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {},
                    child: SvgPicture.asset("assets/history_active.svg"),
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
        Padding(
          padding: const EdgeInsets.only(top: 120),
          child: Container(
            height: 570,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                      child: SvgPicture.asset(
                    "assets/h3.svg",
                    width: 370,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                      child: SvgPicture.asset(
                    "assets/h2.svg",
                    width: 370,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                      child: SvgPicture.asset(
                    "assets/h1.svg",
                    width: 370,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                      child: SvgPicture.asset(
                    "assets/h3.svg",
                    width: 370,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                      child: SvgPicture.asset(
                    "assets/history_ticket.svg",
                    width: 370,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                      child: SvgPicture.asset(
                    "assets/history_ticket.svg",
                    width: 370,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                      child: SvgPicture.asset(
                    "assets/history_ticket.svg",
                    width: 370,
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Container(
                      child: SvgPicture.asset(
                    "assets/history_ticket.svg",
                    width: 370,
                  )),
                ),
              ],
            ),
          ),
        ),

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
                      "History",
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
