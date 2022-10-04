import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketAvaibleWidgets extends StatelessWidget {
  const TicketAvaibleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 100,
            height: 150,
            color: Color.fromARGB(255, 235, 232, 232),
          ),
        ),
      ],
    );
  }
}
