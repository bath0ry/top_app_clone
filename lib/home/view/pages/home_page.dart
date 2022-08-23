import 'package:flutter/material.dart';
import 'package:top_app_clone/home/pages/profile_page.dart';

import 'package:top_app_clone/ticket_shop_button.dart';
import 'package:top_app_clone/tickets_avaible_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Row(children: [TicketAvaibleWidgets(), TicketShop()]),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: Padding(
        padding:
            const EdgeInsets.only(left: 90, top: 80, bottom: 80, right: 50),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: ((context) => const ProfilePage())));
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Icon(
            Icons.person_outline,
            color: Color.fromARGB(255, 3, 224, 217),
            size: 35,
          ),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              color: Color.fromARGB(255, 3, 224, 217),
              size: 28,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.help_outline,
              color: Color.fromARGB(255, 3, 224, 217),
              size: 28,
            )),
        SizedBox(width: 5)
      ],
      backgroundColor: Color.fromARGB(255, 63, 62, 62),
    );
  }
}
