import 'package:flutter/material.dart';

class TicketShop extends StatelessWidget {
  const TicketShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 15, 177, 167)),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 100,
                  width: 100,
                  color: Color.fromARGB(255, 15, 177, 167),
                ),
                Container(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
