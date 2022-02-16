import 'dart:ui';
import 'package:bus_ticket/account.dart';
import 'package:bus_ticket/billing.dart';
import 'package:bus_ticket/history.dart';
import 'package:bus_ticket/info.dart';
import 'package:bus_ticket/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:matcher/matcher.dart';

void main() {
  runApp(MaterialApp(
    title: "Bus ticket",
    debugShowCheckedModeBanner: false,
    home: Site(),
  ));
}

class Site extends StatefulWidget {
  const Site({Key? key}) : super(key: key);

  @override
  _SiteState createState() => _SiteState();
}

class _SiteState extends State<Site> {
  @override
  // logick  start here
  bool click1 = true;
  bool click2 = true;
  bool click3 = true;
  bool click4 = true;
  bool click5 = true;
  bool click6 = true;
  bool click7 = true;
  bool click8 = true;
  bool click9 = true;
  bool click10 = true;
  bool click11 = true;
  bool click12 = true;
  bool click13 = true;
  bool click14 = true;
  bool click15 = true;
  bool click16 = true;
  bool click17 = true;
  bool click18 = true;
  bool click19 = true;
  bool click20 = true;
  bool click21 = true;
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

        // info of state start here
        Padding(
          padding: const EdgeInsets.only(top: 190),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff4173ff),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Select",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff424242),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffff634f),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Booked",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff424242),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xffb5c8fd),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Avaliable",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff424242),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        // info of end start here

        // test start here
        Padding(
          padding: const EdgeInsets.only(top: 220, left: 20, right: 20),
          child: Container(
            // width: MediaQuery.of(context).size.width,
            height: 450,
            // color: Colors.yellow,
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      // color: Colors.purple,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "A",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "B",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 26,
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ignore: deprecated_member_use
                                FlatButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  height: 0,
                                  minWidth: 0,
                                  onPressed: () {
                                    setState(() {
                                      click6 = !click6;
                                    });
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: (click6 == false)
                                          ? Color(0xffb5c8fd)
                                          : Color(0xff4173ff),
                                    ),
                                  ),
                                ),
                                // ignore: deprecated_member_use
                                FlatButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  height: 0,
                                  minWidth: 0,
                                  onPressed: () {
                                    setState(() {
                                      click7 = !click7;
                                    });
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: (click7 == false)
                                          ? Color(0xff4173ff)
                                          : Color(0xffb5c8fd),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffff634f),
                                  ),
                                ),
                                // ignore: deprecated_member_use
                                FlatButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  height: 0,
                                  minWidth: 0,
                                  onPressed: () {
                                    setState(() {
                                      click8 = !click8;
                                    });
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: (click8 == false)
                                          ? Color(0xff4173ff)
                                          : Color(0xffb5c8fd),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FlatButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  height: 0,
                                  minWidth: 0,
                                  onPressed: () {
                                    setState(() {
                                      click9 = !click9;
                                    });
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: (click9 == false)
                                          ? Color(0xff4173ff)
                                          : Color(0xffb5c8fd),
                                    ),
                                  ),
                                ),
                                // ignore: deprecated_member_use
                                FlatButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  height: 0,
                                  minWidth: 0,
                                  onPressed: () {
                                    setState(() {
                                      click10 = !click10;
                                    });
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: (click10 == false)
                                          ? Color(0xff4173ff)
                                          : Color(0xffb5c8fd),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ignore: deprecated_member_use
                                FlatButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  height: 0,
                                  minWidth: 0,
                                  onPressed: () {
                                    setState(() {
                                      click11 = !click11;
                                    });
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: (click11 == false)
                                          ? Color(0xff4173ff)
                                          : Color(0xffb5c8fd),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xffff634f),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                // ignore: deprecated_member_use
                                FlatButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  height: 0,
                                  minWidth: 0,
                                  onPressed: () {
                                    setState(() {
                                      click12 = !click12;
                                    });
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: (click12 == false)
                                          ? Color(0xff4173ff)
                                          : Color(0xffb5c8fd),
                                    ),
                                  ),
                                ),
                                // ignore: deprecated_member_use
                                FlatButton(
                                  padding: EdgeInsets.only(left: 0, right: 0),
                                  height: 0,
                                  minWidth: 0,
                                  onPressed: () {
                                    setState(() {
                                      click13 = !click13;
                                    });
                                  },
                                  child: Container(
                                    width: 60,
                                    height: 60,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: (click13 == false)
                                          ? Color(0xff4173ff)
                                          : Color(0xffb5c8fd),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                // left section end here
                Expanded(
                    flex: 1,
                    child: Container(
                        // color: Colors.yellow,
                        )),
                Expanded(
                  flex: 3,
                  child: Container(
                      // color: Colors.purple,
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "C",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  "D",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 26,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ignore: deprecated_member_use
                            FlatButton(
                              padding: EdgeInsets.only(left: 0, right: 0),
                              height: 0,
                              minWidth: 0,
                              onPressed: () {
                                setState(() {
                                  click14 = !click14;
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: (click14 == false)
                                      ? Color(0xff4173ff)
                                      : Color(0xffb5c8fd),
                                ),
                              ),
                            ),
                            // ignore: deprecated_member_use
                            FlatButton(
                              padding: EdgeInsets.only(left: 0, right: 0),
                              height: 0,
                              minWidth: 0,
                              onPressed: () {
                                setState(() {
                                  click15 = !click15;
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: (click15 == false)
                                      ? Color(0xff4173ff)
                                      : Color(0xffb5c8fd),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ignore: deprecated_member_use
                            FlatButton(
                              padding: EdgeInsets.only(left: 0, right: 0),
                              height: 0,
                              minWidth: 0,
                              onPressed: () {
                                setState(() {
                                  click16 = !click16;
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: (click16 == false)
                                      ? Color(0xff4173ff)
                                      : Color(0xffb5c8fd),
                                ),
                              ),
                            ),
                            // ignore: deprecated_member_use
                            FlatButton(
                              padding: EdgeInsets.only(left: 0, right: 0),
                              height: 0,
                              minWidth: 0,
                              onPressed: () {
                                setState(() {
                                  click17 = !click17;
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: (click17 == false)
                                      ? Color(0xff4173ff)
                                      : Color(0xffb5c8fd),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ignore: deprecated_member_use
                            FlatButton(
                              padding: EdgeInsets.only(left: 0, right: 0),
                              height: 0,
                              minWidth: 0,
                              onPressed: () {
                                setState(() {
                                  click18 = !click18;
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: (click18 == false)
                                      ? Color(0xff4173ff)
                                      : Color(0xffb5c8fd),
                                ),
                              ),
                            ),
                            // ignore: deprecated_member_use
                            FlatButton(
                              padding: EdgeInsets.only(left: 0, right: 0),
                              height: 0,
                              minWidth: 0,
                              onPressed: () {
                                setState(() {
                                  click19 = !click19;
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: (click19 == false)
                                      ? Color(0xff4173ff)
                                      : Color(0xffb5c8fd),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // ignore: deprecated_member_use
                            FlatButton(
                              padding: EdgeInsets.only(left: 0, right: 0),
                              height: 0,
                              minWidth: 0,
                              onPressed: () {
                                setState(() {
                                  click20 = !click20;
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: (click20 == false)
                                      ? Color(0xff4173ff)
                                      : Color(0xffb5c8fd),
                                ),
                              ),
                            ),
                            FlatButton(
                              padding: EdgeInsets.only(left: 0, right: 0),
                              height: 0,
                              minWidth: 0,
                              onPressed: () {
                                setState(() {
                                  click21 = !click21;
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: (click21 == false)
                                      ? Color(0xff4173ff)
                                      : Color(0xffb5c8fd),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffff634f),
                              ),
                            ),
                            Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffff634f),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
                )
              ],
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 48, right: 48, top: 695),
          // ignore: deprecated_member_use
          child: FlatButton(
            padding: EdgeInsets.only(left: 0, right: 0),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Belling()));
            },
            child: Container(
              // width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xffff634f),
              ),
              child: Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
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
        ),
      ],
    ));
  }
}
