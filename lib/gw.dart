import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter_switch/flutter_switch.dart';

class gaswin extends StatefulWidget {
  const gaswin({super.key});

  @override
  State<gaswin> createState() => _gaswinState();
}

class _gaswinState extends State<gaswin> {
  var isToggled = false;
  double _progress = 0.5;
  double _progress2 = 0.3;
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
            child: const Text("Stay safe"),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 13),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 30, color: Colors.black),
            child: const Text("Gas detection"),
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
            progressColor: const Color.fromARGB(255, 153, 10, 0),
            backgroundColor: const Color.fromARGB(255, 235, 235, 235),
            circularStrokeCap: CircularStrokeCap.round,
            center: DefaultTextStyle(
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                  color: const Color.fromARGB(255, 153, 10, 0)),
              child: const Text("40%"),
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: EdgeInsets.only(left: 13),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 10,
                color: Color.fromARGB(255, 163, 162, 162)),
            child: const Text(
                "The percentage of gas is too high open your windows to decrease the percentage, just make the configuration below"),
          ),
        ),
        Center(
          child:ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "temp");
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              backgroundColor: const Color.fromARGB(255, 153, 10, 0)
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Fast Opening"),
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            )),
        ),
        Padding(
          padding: EdgeInsets.only(top: 19, left: 13),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600, fontSize: 30, color: Colors.black),
            child: const Text("Window config"),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 13),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: const Color.fromARGB(255, 214, 214, 214)),
            child: const Text("Windows status"),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: const Color.fromARGB(255, 214, 214, 214)),
            child:  Text('Window 1: ${(_progress * 100).toInt()}%'),
          ),
        ),
        Slider(
              activeColor: const Color.fromARGB(255, 153, 10, 0),
              inactiveColor: Color.fromARGB(255, 151, 108, 105),
              value: _progress,
              onChanged: (newValue) {
                setState(() {
                  _progress = newValue;
                });
              },
            ),
        Padding(
          padding: EdgeInsets.only(left: 20),
          child: DefaultTextStyle(
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: const Color.fromARGB(255, 214, 214, 214)),
            child:  Text('Window 2: ${(_progress2 * 100).toInt()}%'),
          ),
        ),
        Slider(
              activeColor: const Color.fromARGB(255, 153, 10, 0),
              inactiveColor: Color.fromARGB(255, 151, 108, 105),
              value: _progress2,
              onChanged: (newValue) {
                setState(() {
                  _progress2 = newValue;
                });
              },
            ),  
      ],
    ));
    ;
  }
}
