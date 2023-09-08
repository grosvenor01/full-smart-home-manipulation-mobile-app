import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_switch/flutter_switch.dart';

class templigh extends StatefulWidget {
  const templigh({super.key});
  @override
  State<templigh> createState() => _templighState();
}

class _templighState extends State<templigh> {
  var isToggled = false;
  List<bool> toggle = [false, false, true, false];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 372,
          height: 45,
          margin: EdgeInsets.only(top: 30, left: 9, right: 9, bottom: 19),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 204, 204, 204),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Container(
                  width: 69,
                  height: 36,
                  margin: EdgeInsets.only(left: 4),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 6, bottom: 7, left: 10, right: 14),
                    child: DefaultTextStyle(
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Colors.black),
                      child: const Text("Room"),
                    ),
                  )),
              SizedBox(
                width: 34,
              ),
              DefaultTextStyle(
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black),
                child: const Text("Kitchen"),
              ),
              SizedBox(
                width: 34,
              ),
              DefaultTextStyle(
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black),
                child: const Text("Bathroom"),
              ),
              SizedBox(
                width: 34,
              ),
              DefaultTextStyle(
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black),
                child: const Text("Hallway"),
              ),
              SizedBox(
                width: 13,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 19, left: 13),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: const Color.fromARGB(255, 214, 214, 214)),
            child: const Text("Colling & Headting"),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 13),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 30, color: Colors.black),
            child: const Text("Temperature"),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: CircularPercentIndicator(
            radius: 130,
            lineWidth: 25,
            percent: 0.4,
            progressColor: const Color.fromARGB(255, 0, 72, 131),
            backgroundColor: const Color.fromARGB(255, 235, 235, 235),
            circularStrokeCap: CircularStrokeCap.round,
            center: DefaultTextStyle(
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: const Color.fromARGB(255, 0, 72, 131)),
              child: const Text("28°C"),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Center(
          child: Row(
            children: [
              SizedBox(
                width: 45,
              ),
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 221, 221, 221),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 216, 216, 216)),
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DefaultTextStyle(
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black),
                            child: const Text("Heat"),
                          )
                        ],
                      ))),
              SizedBox(
                width: 54,
              ),
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 221, 221, 221),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 0, 72, 131),
                      ),
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Icon(Icons.severe_cold_sharp),
                          SizedBox(
                            height: 5,
                          ),
                          DefaultTextStyle(
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.white),
                            child: const Text("Cool"),
                          )
                        ],
                      ))),
              SizedBox(
                width: 54,
              ),
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 221, 221, 221),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 216, 216, 216)),
                      onPressed: () {},
                      child: Column(
                        children: [
                          SizedBox(
                            height: 5,
                          ),
                          Icon(
                            Icons.auto_awesome_mosaic_sharp,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          DefaultTextStyle(
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                color: Colors.black),
                            child: const Text("Auto"),
                          )
                        ],
                      ))),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 19, left: 13),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 30, color: Colors.black),
            child: const Text("Smart light"),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 13),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: const Color.fromARGB(255, 214, 214, 214)),
            child: const Text("Smart light system"),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                width: 165,
                height: 215,
                margin: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(236, 221, 221, 221)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.only(top: 20, left: 25, bottom: 18),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 6),
                        child: DefaultTextStyle(
                          style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black),
                          child: Text("Red Light"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 40),
                        child: DefaultTextStyle(
                          style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color.fromARGB(255, 119, 118, 118),
                          ),
                          child: Text("Off"),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25),
                          DefaultTextStyle(
                            style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: const Color.fromARGB(255, 119, 118, 118),
                            ),
                            child: const Text("Auto"),
                          ),
                          SizedBox(width: 32),
                          FlutterSwitch(
                              height: 20.0,
                              width: 40.0,
                              padding: 4.0,
                              toggleSize: 15.0,
                              borderRadius: 10.0,
                              activeColor: Colors.green,
                              value: toggle[3],
                              onToggle: (value) {
                                setState(() {
                                  toggle[3] = value;
                                });
                              }),
                        ],
                      )
                    ]),
              ),
              Container(
                width: 165,
                height: 215,
                margin: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(236, 221, 221, 221)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.only(top: 20, left: 25, bottom: 18),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 6),
                        child: DefaultTextStyle(
                          style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black),
                          child: Text("Green Light"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 40),
                        child: DefaultTextStyle(
                          style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color.fromARGB(255, 119, 118, 118),
                          ),
                          child: Text("Off"),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25),
                          DefaultTextStyle(
                            style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: const Color.fromARGB(255, 119, 118, 118),
                            ),
                            child: const Text("Auto"),
                          ),
                          SizedBox(width: 32),
                          FlutterSwitch(
                              height: 20.0,
                              width: 40.0,
                              padding: 4.0,
                              toggleSize: 15.0,
                              borderRadius: 10.0,
                              activeColor: Colors.green,
                              value: toggle[2],
                              onToggle: (value) {
                                setState(() {
                                  toggle[2] = value;
                                });
                              }),
                        ],
                      )
                    ]),
              ),
              Container(
                width: 165,
                height: 215,
                margin: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(236, 221, 221, 221)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.only(top: 20, left: 25, bottom: 18),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 6),
                        child: DefaultTextStyle(
                          style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black),
                          child: Text("Yellow Light"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 40),
                        child: DefaultTextStyle(
                          style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color.fromARGB(255, 119, 118, 118),
                          ),
                          child: Text("Off"),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25),
                          DefaultTextStyle(
                            style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: const Color.fromARGB(255, 119, 118, 118),
                            ),
                            child: const Text("Auto"),
                          ),
                          SizedBox(width: 32),
                          FlutterSwitch(
                              height: 20.0,
                              width: 40.0,
                              padding: 4.0,
                              toggleSize: 15.0,
                              borderRadius: 10.0,
                              activeColor: Colors.green,
                              value: toggle[1],
                              onToggle: (value) {
                                setState(() {
                                 toggle[1] = value;
                                });
                              }),
                        ],
                      )
                    ]),
              ),
              Container(
                width: 165,
                height: 215,
                margin: EdgeInsets.only(left: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(236, 221, 221, 221)),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        margin: EdgeInsets.only(top: 20, left: 25, bottom: 18),
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 6),
                        child: DefaultTextStyle(
                          style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w600,
                              fontSize: 17,
                              color: Colors.black),
                          child: Text("RGB"),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, bottom: 40),
                        child: DefaultTextStyle(
                          style: GoogleFonts.lexend(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: const Color.fromARGB(255, 119, 118, 118),
                          ),
                          child: Text("Off"),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 25),
                          DefaultTextStyle(
                            style: GoogleFonts.lexend(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                              color: const Color.fromARGB(255, 119, 118, 118),
                            ),
                            child: const Text("Auto"),
                          ),
                          SizedBox(width: 32),
                          FlutterSwitch(
                              height: 20.0,
                              width: 40.0,
                              padding: 4.0,
                              toggleSize: 15.0,
                              borderRadius: 10.0,
                              activeColor: Colors.green,
                              value: toggle[0],
                              onToggle: (value) {
                                setState(() {
                                  toggle[0] = value;
                                });
                              }),
                        ],
                      )
                    ]),
              )
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
      ],
    ));
  }
}
