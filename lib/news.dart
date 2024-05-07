import 'package:flutter/material.dart';

class NewsView extends StatelessWidget {
  const NewsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffecf4da),
      body: Center(
        child: Text("News Screen"),
      ),
    );
  }
}