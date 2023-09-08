import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:flutter_switch/flutter_switch.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var isToggled = false;
  var isToggled2 = false;
  var isToggled3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(height: 27),
        Row(
          children: [
            const SizedBox(
              width: 25,
            ),
            Container(
              height: 43,
              width: 43,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage("assets/avatar.png"))),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DefaultTextStyle(
                  style: GoogleFonts.lexend(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                  child: const Text("Hi MC Member"),
                ),
                DefaultTextStyle(
                  style: GoogleFonts.lexend(
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                      color: Colors.black),
                  child: const Text("Monday, 20 Jan"),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.settings,
              color: Colors.black,
              size: 25,
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(left: 25, top: 25, right: 25, bottom: 26),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(
                255, 238, 238, 238), // Specify the background color
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(182, 194, 205, 0.2),
                offset: Offset(10, 4),
                blurRadius: 13,
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color.fromRGBO(182, 194, 205, 0.2),
                offset: Offset(-10, 4),
                blurRadius: 14,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 21),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextStyle(
                    style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.black),
                    child: const Text("Energy Saving"),
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: const Color.fromARGB(255, 23, 161, 28)),
                    child: const Text("+35%"),
                  ),
                  DefaultTextStyle(
                    style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.grey),
                    child: const Text("23.5kWh"),
                  ),
                ],
              ),
              const SizedBox(
                width: 89,
              ),
              Container(
                width: 107,
                height: 86,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/3.png"), fit: BoxFit.fill)),
              )
            ],
          ),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              service(isToggled, Icons.water_drop_rounded, "Water Tank",(value) {setState(() {isToggled = value;});},subtext: "68%"),
              service(isToggled2, Icons.door_back_door, "Home Door",(value) {setState(() {isToggled2 = value;});},
                  subtext: ""),
              service(isToggled3, Icons.garage, "Garage Door",(value) {setState(() {isToggled3 = value;});}, subtext: ""),
            ])),
        Padding(
            padding: EdgeInsets.only(left: 20),
            child: ListTile(
              leading: DefaultTextStyle(
                style: GoogleFonts.lexend(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black,
                ),
                child: const Text("Runing Appliance"),
              ),
              trailing: DefaultTextStyle(
                style: GoogleFonts.lexend(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Color.fromARGB(255, 3, 0, 202),
                ),
                child: const Text("See All"),
              ),
            )),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(children: [
                  runing("assets/4.png", "Smart Light", "open for 3hrs"),
                  runing("assets/5.png", "Irrigation", "on for 48 min "),
                  runing("assets/6.png", "Air Condition", "on for 1 hrs"),
                  runing("assets/7.png", "Tv ", "open for 3hrs"),
                ]))),
        SizedBox(height: 20,),
        ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "temp");
            },
            style: ElevatedButton.styleFrom(
              
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Get more"),
                Icon(Icons.arrow_forward_ios_rounded),
              ],))
      ]),
    );
  }

  Widget runing(String icon, String text, String sub) {
    return Container(
      width: 126,
      height: 129,
      margin: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 238, 238),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25), // Shadow color
            offset: Offset(0, 4), // Offset
            blurRadius: 10.0, // Blur radius
            spreadRadius: 0.0, // Spread radius
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 30,
            margin: EdgeInsetsDirectional.only(top: 6, start: 11),
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(icon))),
          ),
          Padding(
              padding: EdgeInsets.only(left: 11),
              child: DefaultTextStyle(
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black),
                child: Text(text),
              )),
          Padding(
              padding: EdgeInsets.only(left: 11),
              child: DefaultTextStyle(
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500,
                    fontSize: 9,
                    color: const Color.fromARGB(255, 194, 194, 194)),
                child: Text(sub),
              )),
          Padding(
              padding: EdgeInsets.only(top: 9, left: 6),
              child: Icon(
                Icons.settings_power_rounded,
                size: 30,
                color: Colors.red,
              ))
        ],
      ),
    );
  }

  Widget service(bool isToggled, IconData icon, String text,ValueChanged<bool> onToggle ,{subtext}) {
    return Container(
      width: 165,
      height: 215,
      margin: EdgeInsets.only(left: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(236, 221, 221, 221)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 45,
          width: 45,
          margin: EdgeInsets.only(top: 20, left: 25, bottom: 18),
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 197, 196, 196)),
          child: Icon(
            icon,
            size: 24,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 25, bottom: 6),
          child: DefaultTextStyle(
            style: GoogleFonts.lexend(
                fontWeight: FontWeight.w600, fontSize: 17, color: Colors.black),
            child: Text(text),
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
            child: Text(subtext),
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
                value: isToggled,
                onToggle: onToggle ),
          ],
        )
      ]),
    );
  }
}
