
import 'package:flutter/material.dart';
import 'package:my_first_application/old_files/first_screen_1.dart';
import 'package:my_first_application/old_files/sign_up_screen.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff192815),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.35,
                width: MediaQuery.sizeOf(context).width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/bg1.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 26, left: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FirstScreen()));
                  },
                  child: const CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: Icon(Icons.arrow_back_ios,
                          color: Colors.black, size: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          const Text(
            "Welcome Back",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          const Text(
            "Log in to your account",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.04,
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        isDense: true,
                        prefixIcon: const Icon(Icons.account_circle,
                            color: Colors.black, size: 25),
                        labelText: "Full Name",
                        labelStyle: const TextStyle(
                          color: Colors.black45,
                        ),
                        hintText: "John Doe"),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white70,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        isDense: true,
                        prefixIcon: const Icon(Icons.lock,
                            color: Colors.black, size: 25),
                        labelText: "Password",
                        labelStyle: const TextStyle(
                          color: Colors.black45,
                        ),
                        hintText: "*********"),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.01,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.check_circle,
                              size: 18, color: Colors.white),
                          Text(
                            "Remember me",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 15),
                          ),
                        ],
                      ),
                      Text(
                        "Forgot Password?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.12,
                  ),
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
                    onPressed: () {},
                    child: const Text(
                      "Log in",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              (context),
                              MaterialPageRoute(
                                builder: (context) => const SignUpScreen(),
                              ));
                        },
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
