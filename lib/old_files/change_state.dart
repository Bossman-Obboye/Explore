import 'package:flutter/material.dart';

class ChangeState extends StatelessWidget {
  const ChangeState({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      FirstColumn(),
      SecondColumn(),
    ]));
  }
}

class FirstColumn extends StatelessWidget {
  const FirstColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Like: ", style: TextStyle(color: Colors.black, fontSize: 25))
      ],
    );
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
          },
        ),
      ],
    );
  }
}
