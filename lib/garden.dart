import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_switch/flutter_switch.dart';

class garden extends StatefulWidget {
  const garden({super.key});

  @override
  State<garden> createState() => _gardenState();
}

class _gardenState extends State<garden> {
  bool isToggled = false;
  bool isToggled2 = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/8.png"), fit: BoxFit.fill)),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 75, left: 15),
                  width: 180,
                  height: 112,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 13, top: 9),
                            child: DefaultTextStyle(
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 30,
                                  color: Colors.black),
                              child: const Text("16°C"),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.air),
                          SizedBox(
                            width: 13,
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: DefaultTextStyle(
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.black),
                          child: const Text("Temperature"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 13),
                        child: DefaultTextStyle(
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              color: const Color.fromARGB(255, 155, 155, 155)),
                          child: const Text("Current"),
                        ),
                      ),
                    ],
                  )),
              Container(
                width: 95,
                height: 350,
                margin: EdgeInsets.only(top: 75, left: 76),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40)),
                child: Column(children: [
                  SizedBox(
                    height: 143,
                  ),
                  Container(
                    width: 79,
                    height: 200,
                    margin: EdgeInsets.only(bottom: 7, left: 8, right: 8),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40))),
                  )
                ]),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(children: [
            Container(
              height: 167,
              width: 150,
              margin: EdgeInsets.only(left: 23),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 56, 56, 56),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Container(
                        height: 35,
                        width: 35,
                        margin: EdgeInsets.only(left: 10, top: 19),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          Icons.device_thermostat_outlined,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:19,left: 30),
                      child : FlutterSwitch(
                          height: 30.0,
                          width: 50.0,
                          padding: 4.0,
                          toggleSize: 25.0,
                          borderRadius: 20.0,
                          activeColor: Colors.black,
                          value: isToggled,
                          onToggle: (value) {setState(() {isToggled = value;});},
                      ))
                    ]),
                    Padding(
                      padding: EdgeInsets.only(top: 65, left: 13),
                      child: DefaultTextStyle(
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                        child: const Text("Irrigation"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: DefaultTextStyle(
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Colors.white),
                        child: const Text("2 Devices"),
                      ),
                    ),
                  ]),
            ),
            Container(
              height: 167,
              width: 150,
              margin: EdgeInsets.only(left: 23),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 56, 56, 56),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      Container(
                        height: 35,
                        width: 35,
                        margin: EdgeInsets.only(left: 10, top: 19),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          Icons.tips_and_updates,
                          color: Colors.black,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top:19,left: 30),
                      child : FlutterSwitch(
                          height: 30.0,
                          width: 50.0,
                          padding: 4.0,
                          toggleSize: 25.0,
                          borderRadius: 20.0,
                          activeColor: Colors.black,
                          value: isToggled2,
                          onToggle: (value) {setState(() {isToggled2 = value;});},
                      ))
                    ]),
                    Padding(
                      padding: EdgeInsets.only(top: 65, left: 13),
                      child: DefaultTextStyle(
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white),
                        child: const Text("LED"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: DefaultTextStyle(
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Colors.white),
                        child: const Text("2 Devices"),
                      ),
                    ),
                  ]),
            ),
          ])
        ],
      ),
    );
  }
}
