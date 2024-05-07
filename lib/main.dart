import 'package:flutter/material.dart';
import 'package:my_first_application/news.dart';
import 'package:my_first_application/old_files/started.dart';
import 'package:my_first_application/places.dart';

// import 'package:my_first_application/second_screen.dart';
//
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
     home: GetStarted(),
    // home: NewsView(),
    // home: PlaceView(),
    ),
  );
}

class LearnWidget extends StatelessWidget {
  const LearnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // EdgeInsets deviceView = MediaQuery.of(context).viewPadding;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text("Title",
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'MyFontFamily',
              )),
        ),
        body: Wrap(
          children: [
            const Wrap(
              textDirection: TextDirection.ltr,
              children: <Widget>[
                MyButton(buttonData: 'Data 1'),
                MyButton(buttonData: 'Data 2'),
                MyButton(buttonData: 'Data 3'),
              ],
            ),
            Stack(
              children: [
                Container(
                  width: size.width / 2,
                  height: size.width / 2,
                  color: Colors.red,
                ),
                Container(
                  width: size.width / 2,
                  height: size.width / 2,
                  color: Colors.yellow,
                ),
                //   Positioned(
                //     top: size.width / 2.5,
                //     height: size.width / 2,
                //     child: Container(
                //       width: size.width / 4,
                //       height: size.width / 4,
                //       color: Colors.blue,
                //     ),
                //   ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  final String buttonData;

  const MyButton({super.key, required this.buttonData});

  // Widget smallButton() {

  //   return Padding(
  //     padding: const EdgeInsets.all(4.0),
  //     child: ElevatedButton(

  //       onPressed: () {},
  //       child: Text("$buttonData"),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(const RoundedRectangleBorder()),
        ),
        onPressed: () {},
        child: Text(buttonData),
      ),
    );
  }
}
