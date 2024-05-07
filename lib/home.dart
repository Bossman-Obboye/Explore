import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffecf4da),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 24,
                  color: Color(0xff192815),
                ),
                Text('Cape Coast',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff192815),
                    ))
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            const Text(
              "Mon Apr 08 2024",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: size.height * 0.22,
              decoration: BoxDecoration(
                color: const Color(0xffecf4da),
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                      color: Colors.white,
                      spreadRadius: -10,
                      blurRadius: 20,
                      offset: Offset(-10, -10)),
                  const BoxShadow(
                    color: Color.fromARGB(178, 128, 177, 113),
                    spreadRadius: -10,
                    blurRadius: 20,
                    offset: Offset(10, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "23°",
                        style: TextStyle(
                          color: Color(0xff192815),
                          fontSize: 90,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.cloud_outlined,
                        color: Color(0xff192815),
                        size: 90,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Real Feel : 18",
                        style: TextStyle(
                          color: Color(0xff192815),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "OverCast",
                        style: TextStyle(
                          color: Color(0xff192815),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Humidity",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '65%',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "UV index",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Wind speed",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '5.69 mph',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rain probability",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '2%',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Pressure",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        '1023.6 Pa%',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      
    );
  }
}
