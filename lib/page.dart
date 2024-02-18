import 'package:flutter/material.dart';
import 'package:proj3/routes.dart';

class thP extends StatefulWidget {
  const thP({super.key});

  @override
  State<thP> createState() => _thPState();
}

class _thPState extends State<thP> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Logout",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, Myroutes.homeRoute);
          },
        ),
      ),
    );
  }
}
