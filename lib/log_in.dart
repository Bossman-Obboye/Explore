import 'package:flutter/material.dart';
import 'package:my_first_application/index.dart';
import 'package:my_first_application/sign_up22.dart';

class LogInview extends StatefulWidget {
  const LogInview({super.key});

  @override
  State<LogInview> createState() => _LogInviewState();
}

class _LogInviewState extends State<LogInview> {
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color(0xff192815),
        body: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: size.width,
                  child: Image(
                    image: const AssetImage("assets/images/bg_leaf.jpg"),
                    fit: BoxFit.cover,
                    height: size.width * 0.6,
                    width: size.width,
                  ),
                ),
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
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: _formKey,
                child: Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                    const Text(
                      "Log in to your account",
                      style: TextStyle(color: Color(0xffecf4da), fontSize: 18),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: _nameController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This field must be filled";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffecf4da),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        prefixIcon: const Icon(
                          Icons.account_circle,
                          color: Colors.black,
                          size: 25,
                        ),
                        labelText: "Full Name",
                        hintText: "John Doe",
                        isDense: true,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 8) {
                          return "Pasword must be at least 8 characters";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
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
                        labelText: "Password",
                        hintText: "***************",
                        isDense: true,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isChecked = !isChecked;
                                });
                              },
                              child: Icon(
                                isChecked
                                    ? Icons.check_circle
                                    : Icons.check_circle_outline,
                                color: const Color(0xffecf4da),
                                size: 18,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.sizeOf(context).width * 0.01,
                            ),
                            const Text(
                              "Remember me",
                              style: TextStyle(
                                color: Color(0xffecf4da),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Forget Password?",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.1,
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
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                            _nameController.clear();
                            _passwordController.clear();
                          }
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 110,
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
                    SizedBox(
                      height: MediaQuery.sizeOf(context).height * 0.02,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account?",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                (context),
                                MaterialPageRoute(
                                    builder: (context) => SignUpViewScreen()));
                          },
                          child: const Text(" Sign Up",
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
        ));
  }
}
