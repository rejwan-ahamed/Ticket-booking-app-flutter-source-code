import 'package:bus_ticket/home.dart';
import 'package:bus_ticket/ticket.dart';
import 'package:flutter/material.dart';
// import 'package:matcher/matcher.dart';

void main() {
  runApp(MaterialApp(
    title: "Bus ticket",
    debugShowCheckedModeBanner: false,
    home: Bus_First_Page(),
  ));
}

class Bus_First_Page extends StatefulWidget {
  const Bus_First_Page({Key? key}) : super(key: key);

  @override
  _Bus_First_PageState createState() => _Bus_First_PageState();
}

class _Bus_First_PageState extends State<Bus_First_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          // width: 428,
          // height: 926,
          color: Color(0xffeef2fc),
          padding: const EdgeInsets.only(
            bottom: 86,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // width: MediaQuery.of(context).size.width,
                // height: MediaQuery.of(context).size.height / 1.8,
                child: Image.asset("assets/1.png"),
                // child: FlutterLogo(size: 428),
              ),
              SizedBox(height: 28.25),
              Text(
                "Welcome to \nTicketing App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 28.25),
              SizedBox(
                width: 296,
                height: 57,
                child: Text(
                  "Book your ticket online with your best searching preferences",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff9ea1a8),
                    fontSize: 15,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 28.25),
              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: Container(
                  width: 283,
                  height: 57,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffff634f),
                  ),
                  padding: const EdgeInsets.only(
                    left: 57,
                    right: 56,
                    top: 19,
                    bottom: 18,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 170,
                        height: 20,
                        child: Text(
                          "Get Started",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 18.25),

              // ignore: deprecated_member_use
              FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                child: SizedBox(
                  width: 170,
                  height: 20,
                  child: Text(
                    "Try it Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff9ea1a8),
                      fontSize: 15,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
