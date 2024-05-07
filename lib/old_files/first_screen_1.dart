import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_first_application/old_files/sign_up_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.02),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * 0.22,
                ),
                const Text(
                  "The Best",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                const Text(
                  "App for",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                  ),
                ),
                const Text(
                  "your Plants",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(
                      Size(400, 56),
                    ),
                    side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.black),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()));
                  },
                  child: const Text(
                    "Sign up",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.02),
                ElevatedButton(
                  style: ButtonStyle(
                    minimumSize: const MaterialStatePropertyAll(
                      Size(400, 56),
                    ),
                    side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.white),
                    ),
                    backgroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.push(
                        // context,
                        // MaterialPageRoute(
                            // builder: (context) => const LogInPage()));
                  },
                  child: const Text(
                    "Log in",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
