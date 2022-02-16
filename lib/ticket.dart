// import 'dart:ui';

import 'package:bus_ticket/account.dart';
import 'package:bus_ticket/history.dart';
import 'package:bus_ticket/home.dart';
import 'package:bus_ticket/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:matcher/matcher.dart';

void main() {
  runApp(MaterialApp(
    title: "Bus ticket",
    debugShowCheckedModeBanner: false,
    home: Ticket(),
  ));
}

class Ticket extends StatefulWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
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
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => History()));
                    },
                    child: SvgPicture.asset("assets/history.svg"),
                    minWidth: 20,
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                    onPressed: () {},
                    child: SvgPicture.asset("assets/ticket_active.svg"),
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

        // ticket image
        Positioned(
          top: 280,
          left: 10,
          child: SvgPicture.asset(
            "assets/ticket_main2.svg",
            width: 370,
          ),
        ),

        Positioned(
          top: 295,
          left: 40,
          child: Container(
            child: Image.asset(
              "assets/company.png",
              width: 35,
            ),
          ),
        ),
        Positioned(
          top: 642,
          left: 55,
          child: Container(
            child: Image.asset(
              "assets/bar.png",
              width: 280,
            ),
          ),
        ),

        // top container
        Container(
          height: 250,
          color: Color.fromRGBO(255, 255, 255, 1),
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

              // destination
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  child: Column(
                    children: [
                      // to destinition
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  width: 21,
                                  height: 21,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xffff634f),
                                  ),
                                ),
                              ),
                              Text(
                                "From : Mirpur - 05827",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // to destinition end here

              // hr line start here
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 30, right: 30),
                child: Container(
                  width: (MediaQuery.of(context).size.width),
                  height: 1,
                  color: Color(0x66000000),
                ),
              ),
              // hr line end here

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  child: Column(
                    children: [
                      // to destinition
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Container(
                                  width: 21,
                                  height: 21,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff4173ff),
                                  ),
                                ),
                              ),
                              Text(
                                "To : Noakhali - 3800",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              // to destinition end here
            ],
          ),
        )
      ],
    ));
  }
}
