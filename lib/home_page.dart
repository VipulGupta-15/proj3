import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:proj3/routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool obs = true;
  bool cb = false;

  TextEditingController pass = TextEditingController();
  TextEditingController emaill = TextEditingController();

  Future<void> _login() async {
    setState(() {
      cb = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emaill.text,
        password: pass.text,
      );
      Navigator.pushNamed(context, Myroutes.io);
    } catch (e) {
      setState(() {
        cb = false;
      });
      // Handle authentication errors here
      print("Error logging in: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Image.asset(
            "assets/image/stock_market_image.png",
            height: 205,
            width: 325,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Welcome to WealthWise",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20.0,
          ),
          const Text(
            "Login here",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  controller: emaill,
                  decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      )),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  controller: pass,
                  obscureText: obs,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    suffixIcon: IconButton(
                      padding: const EdgeInsetsDirectional.only(end: 12.0),
                      icon: obs
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      onPressed: () {
                        setState(() {
                          obs = !obs;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  splashColor: Colors.grey,
                  onTap: _login,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    width: cb ? 80 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(cb ? 20 : 8),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.black),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, Myroutes.loginRoute);
                },
                child: const Text(
                  "Sign up",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
