import 'dart:ui';
import 'package:bus_ticket/account.dart';
import 'package:bus_ticket/complite.dart';
import 'package:bus_ticket/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:matcher/matcher.dart';

void main() {
  runApp(MaterialApp(
    title: "Bus ticket",
    debugShowCheckedModeBanner: false,
    home: Belling(),
  ));
}

class Belling extends StatefulWidget {
  const Belling({Key? key}) : super(key: key);

  @override
  _BellingState createState() => _BellingState();
}

class _BellingState extends State<Belling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffeef2fc),
        body: Stack(
          children: [
            // main container

            Padding(
              padding: const EdgeInsets.only(top: 120, left: 25, right: 25),
              child: Container(
                height: 700,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Full name",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3c3c3c),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: "Email address",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3c3c3c),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Phone number",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3c3c3c),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Address",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3c3c3c),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Address2 (optional)",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3c3c3c),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "City",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3c3c3c),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Zip-code",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3c3c3c),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Card number",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3c3c3c),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "CVC ",
                            labelStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3c3c3c),
                            ),
                          ),
                        ),
                      ),
                    ],
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
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Belling details",
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

            // payment button

            Padding(
              padding: const EdgeInsets.only(top: 750),
              child: Center(
                child: Container(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                      padding: EdgeInsets.only(left: 0, right: 0),
                      height: 0,
                      minWidth: 0,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Complite()));
                      },
                      child: Container(
                        width: 340,
                        height: 67,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffff634f),
                        ),
                        child: Center(
                            child: Text(
                          "Pay now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                      )),
                ),
              ),
            )
          ],
        ));
  }
}
