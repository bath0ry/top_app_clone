import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: Icon(Icons.person_outline),
        ),
        backgroundColor: Color.fromARGB(255, 63, 62, 62),
      ),
    );
  }
}
