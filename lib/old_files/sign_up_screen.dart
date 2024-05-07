import 'package:flutter/material.dart';
import 'package:my_first_application/old_files/first_screen_1.dart';
import 'package:my_first_application/old_files/log_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff172815),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 26, left: 15),
            child: Container(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => const FirstScreen()));
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.white70,
                  radius: 15,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(Icons.arrow_back_ios,
                        color: Colors.black, size: 18),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          const Text(
            "Register",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          ),
          const Text(
            "Create your new account",
            style: TextStyle(color: Colors.white, fontSize: 20),
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
                      labelText: "Full Name",
                      labelStyle: const TextStyle(
                        color: Colors.black45,
                      ),
                      prefixIcon:
                          const Icon(Icons.account_circle, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      isDense: true,
                      hintText: 'John Doe',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.02,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        isDense: true,
                        labelText: "lewiscooper@gmail.com",
                        labelStyle: const TextStyle(color: Colors.black45),
                        filled: true,
                        fillColor: Colors.white70,
                        hintText: "example@gmail.com",
                        prefixIcon:
                            const Icon(Icons.email, color: Colors.black)),
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
                        labelText: "Confirm Password",
                        labelStyle: const TextStyle(
                          color: Colors.black45,
                        ),
                        hintText: "*********"),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.01,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "'By signing up you agree to our ",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 15,
                        ),
                      ),
                      Text("Terms of Use and",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ))
                    ],
                  ),
                  const Text(
                    "Privacy and Policy.'",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.14,
                  ),
                  // Spacer(flex: 1),
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
                  SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Have an account? ",
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
                                  builder: (context) => const LogInPage()));
                        },
                        child: const Text(
                          "Log in",
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
          )
        ],
      ),
    );
  }
}
