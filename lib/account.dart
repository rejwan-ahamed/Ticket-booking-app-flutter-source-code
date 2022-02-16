import 'dart:ui';
import 'package:bus_ticket/history.dart';
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
    home: Account(),
  ));
}

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
                    onPressed: () {},
                    child: SvgPicture.asset("assets/account_active.svg"),
                    minWidth: 20,
                  ),
                ],
              ),
            ),
          ),
        ),

        // top container
        Container(
          child: Image.asset("assets/bg2.png"),
        ),

        // accout details
        Padding(
          padding: const EdgeInsets.only(top: 300, left: 30, right: 30),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Container(
                  child: Align(
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 140, bottom: 10),
                          child: Text(
                            "Name : Norma T. Parker",
                            style: TextStyle(
                              color: Color(0xff747474),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 367,
                          height: 1.5,
                          color: Color(0xffbfbfc0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 20, bottom: 10, top: 20),
                          child: Text(
                            "Email : NormaTParker@jourrapide.com",
                            style: TextStyle(
                              color: Color(0xff747474),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 367,
                          height: 1.5,
                          color: Color(0xffbfbfc0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 150, bottom: 10, top: 20),
                          child: Text(
                            "Phone : 785-472-3245 ",
                            style: TextStyle(
                              color: Color(0xff747474),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 367,
                          height: 1.5,
                          color: Color(0xffbfbfc0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 40, bottom: 10, top: 20),
                          child: Text(
                            "Address : 4640 Admiralty Way #715 ",
                            style: TextStyle(
                              color: Color(0xff747474),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 367,
                          height: 1.5,
                          color: Color(0xffbfbfc0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 0, bottom: 10, top: 20),
                          child: Text(
                            "Address2 : Marina Del Rey, California(CA) ",
                            style: TextStyle(
                              color: Color(0xff747474),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 367,
                          height: 1.5,
                          color: Color(0xffbfbfc0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 210, bottom: 10, top: 20),
                          child: Text(
                            "City : California ",
                            style: TextStyle(
                              color: Color(0xff747474),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 367,
                          height: 1.5,
                          color: Color(0xffbfbfc0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 232, bottom: 10, top: 20),
                          child: Text(
                            "Zip : 90292 ",
                            style: TextStyle(
                              color: Color(0xff747474),
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          width: 367,
                          height: 1.5,
                          color: Color(0xffbfbfc0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        // warning
        Padding(
          padding: const EdgeInsets.only(top: 580),
          child: Center(
            child: Container(
              child: Text(
                "We do not share your personal \ndetails with any companies and government.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xffb3b3b3),
                  fontSize: 15,
                ),
              ),
            ),
          ),
        )
      ],
    ));
  }
}
