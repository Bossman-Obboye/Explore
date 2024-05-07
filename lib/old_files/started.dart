import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_first_application/log_in.dart';
import 'package:my_first_application/sign_up22.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context)
                .size
                .height, // Set the height to full screen height
            width: MediaQuery.of(context)
                .size
                .width, // Set the width to full screen width
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bg_leaf.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Container(
                color: const Color(0xff192815).withOpacity(0.5),
                child: Center(
                  child: Transform.scale(
                    scale: 1.8, // Adjust the scale factor as needed
                    child: Image.asset(
                      "assets/images/bg_leaf.jpg", // Path to your image asset
                      height: MediaQuery.of(context)
                          .size
                          .height, // Set the height to full screen height
                      width: MediaQuery.of(context)
                          .size
                          .width, // Set the width to full screen width
                      fit: BoxFit
                          .cover, // Adjust the fit to cover the entire container
                    ),
                  ),
                ),
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              color: const Color(0xff192815).withOpacity(0.5),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                    Text(
                      "The Best",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.sizeOf(context).width * 0.12),
                    ),
                    Text(
                      "App for",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.sizeOf(context).width * 0.12),
                    ),
                    Text(
                      "your plants",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: MediaQuery.sizeOf(context).width * 0.12),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                width: 1,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                       SignUpViewScreen()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 118,
                            vertical: 10,
                          ),
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              side: const BorderSide(
                                width: 1,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              (context),
                              MaterialPageRoute(
                                  builder: (context) => const LogInview()));
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 124,
                            vertical: 10,
                          ),
                          child: Expanded(
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]))
        ],
      ),
    );
  }
}
