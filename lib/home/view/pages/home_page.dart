import 'package:flutter/material.dart';
import 'package:top_app_clone/pages/view/profile_page.dart';

import 'package:top_app_clone/components/ticket_shop_button.dart';
import 'package:top_app_clone/components/tickets_avaible_widgets.dart';

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
        padding: const EdgeInsets.fromLTRB(70, 30, 30, 30),
        child: Image.asset(
            'assets/images/WhatsApp_Image_2022-09-24_at_22.52.37-removebg-preview.png'),
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
