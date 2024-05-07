import 'package:flutter/material.dart';

class LikedTest extends StatelessWidget {
  const LikedTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Testing"),
        ),
        body: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Text("Like This: ", style: TextStyle(fontSize: 20))],
            ),
            SecondColumn(),
          ],
        ));
  }
}

class SecondColumn extends StatefulWidget {
  const SecondColumn({super.key});

  @override
  State<SecondColumn> createState() => _SecondColumnState();
}

class _SecondColumnState extends State<SecondColumn> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            icon: Icon(liked ? Icons.star : Icons.star_border),
            onPressed: () {
              setState(() {
                liked = !liked;
              });
            }),
      ],
    );
  }
}
