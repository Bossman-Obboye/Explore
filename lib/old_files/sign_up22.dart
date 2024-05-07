import 'package:flutter/material.dart';
import 'package:my_first_application/log_in.dart';

class SignUpViewScreen extends StatelessWidget {
  const SignUpViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff192815),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10),
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  mini: true,
                  backgroundColor: const Color(0xffecf4da),
                  shape: const CircleBorder(),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Form(
                  child: Column(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                      const Text(
                        "Create your new account",
                        style:
                            TextStyle(color: Color(0xffecf4da), fontSize: 18),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.06,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          fillColor: const Color(0xffecf4da),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(
                            Icons.account_circle,
                            color: Colors.black,
                            size: 25,
                          ),
                          labelText: "Full Name",
                          labelStyle: TextStyle(color: Colors.grey[700],
                          backgroundColor:  Color(0xffecf4da)),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          hintText: "John Doe",
                          isDense: true,
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.03),
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          fillColor: const Color(0xffecf4da),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                            size: 25,
                          ),
                          labelText: "Email",
                          hintText: "example@gmail.com",
                          isDense: true,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          filled: true,
                          fillColor: const Color(0xffecf4da),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.black,
                            size: 25,
                          ),
                          labelText: "Password",
                          hintText: "***************",
                          isDense: true,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.03,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          filled: true,
                          fillColor: const Color(0xffecf4da),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.black,
                            size: 25,
                          ),
                          labelText: "Confirm Password",
                          hintText: "***************",
                          isDense: true,
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.02,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "*By signing up you agree to our ",
                                style: TextStyle(
                                  color: Color(0xffecf4da),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.01,
                              ),
                              const Text(
                                "Terms of Use and",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "Privacy Policy*",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.sizeOf(context).height * 0.12,
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
                          onPressed: () {},
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
                        height: MediaQuery.sizeOf(context).height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Have an account?",
                              style: TextStyle(
                                color: Colors.white,
                              )),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                      builder: (context) => const LogInview()));
                            },
                            child: const Text(" Log in",
                                style: TextStyle(
                                  color: Color(0xffecf4da),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
