import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mcsmart/garden.dart';
import 'package:mcsmart/gw.dart';
import 'package:mcsmart/home.dart';
import 'package:mcsmart/tl.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});

  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  var current = 0;
  List<Widget> screens = [homePage(), templigh(), gaswin(), garden()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[current],
      bottomNavigationBar: CurvedNavigationBar(
        items: const <Widget>[
          Icon(
            Icons.house_rounded,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.ac_unit_rounded,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.gas_meter,
            size: 35,
            color: Colors.white,
          ),
          Icon(
            Icons.yard,
            size: 35,
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.white,
        animationCurve: Curves.linear,
        color: Color.fromARGB(255, 0, 105, 190),
        onTap: (value) {
          setState(() {
            current = value;
          });
        },
      ),
    );
  }
}
