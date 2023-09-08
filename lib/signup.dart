import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 50,
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.only(top: 50),
        color: Colors.white,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 350,
            width: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/2.png"))),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DefaultTextStyle(
                style: GoogleFonts.lexend(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.black),
                child: const Text("Easily Control Your Home"),
              )),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: DefaultTextStyle(
                style: GoogleFonts.lexend(fontSize: 16, color: Colors.black),
                child: const Text("Manage your home from anytime \nanywhere"),
              )),
          const SizedBox(height: 20),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 146,
            decoration: const BoxDecoration(
                color:Color.fromARGB(255, 238, 237, 237),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50))),
            child: Column(
              children: <Widget> [
                SizedBox(height: 20),
                DefaultTextStyle(
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    color: Colors.grey),
                  child: const Text("Place your finger to open"),
                ),
                SizedBox(height: 20),
                Icon(
                  Icons.fingerprint,
                  size: 60,
                  color: Colors.grey,)
              ],
            ),
          )
        ]));
  }
}
