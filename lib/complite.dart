import 'dart:ui';
import 'package:bus_ticket/account.dart';
import 'package:bus_ticket/ticket.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// import 'package:matcher/matcher.dart';

void main() {
  runApp(MaterialApp(
    title: "Bus ticket",
    debugShowCheckedModeBanner: false,
    home: Complite(),
  ));
}

class Complite extends StatefulWidget {
  const Complite({Key? key}) : super(key: key);

  @override
  _CompliteState createState() => _CompliteState();
}

class _CompliteState extends State<Complite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Lottie.asset("assets/complite.json"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 360),
            child: Container(
              // ignore: deprecated_member_use
              child: FlatButton(
                padding: EdgeInsets.only(left: 0, right: 0),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Ticket()));
                },
                child: Container(
                  width: 180,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffff634f),
                  ),
                  child: Center(
                    child: Text(
                      "Proceed",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
