import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:proj3/view/io.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController pass = TextEditingController();
  TextEditingController emaill = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            "Sign up",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                prefixIcon: Icon(Icons.person_2_outlined),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: emaill,
              decoration: InputDecoration(
                hintText: "Enter Email Id",
                labelText: "Email ID",
                prefixIcon: Icon(Icons.person_2_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: pass,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password",
                prefixIcon: Icon(Icons.lock_clock_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black),
              width: 120,
              height: 50,
              child: ElevatedButton(
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                          email: emaill.text, password: pass.text)
                      .then((value) {
                    log(10);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const IO()));
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
