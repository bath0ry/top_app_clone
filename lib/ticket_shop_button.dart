import 'package:flutter/material.dart';

class TicketShop extends StatelessWidget {
  const TicketShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 10000),
        child: TextButton(
          onPressed: () {},
          child: Text("UTILIZAR BILHETE"),
        ),
      ),
    );
  }
}
