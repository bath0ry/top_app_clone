import 'package:flutter/material.dart';
import 'package:top_app_clone/components/ticket_shop_buttons_widget.dart';

class TicketShop extends StatelessWidget {
  const TicketShop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TicketShopButtons(
          borderButton: BorderRadius.circular(10),
          colorButton: Color.fromARGB(255, 15, 177, 167),
        ),
        TicketShopButtons(
          borderButton: BorderRadius.circular(10),
          colorButton: Color.fromARGB(255, 15, 177, 167),
        ),
      ],
    );
  }
}
