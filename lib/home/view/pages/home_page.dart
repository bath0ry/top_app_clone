import 'package:flutter/material.dart';
import 'package:top_app_clone/pages/view/profile_page.dart';

import 'package:top_app_clone/components/tickets_avaible_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.qr_code,
                color: Color.fromARGB(255, 3, 160, 155),
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                Icons.directions_subway,
                color: Color.fromARGB(255, 3, 160, 155),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 226, 226, 226),
      appBar: _appBar(context),
      body: SingleChildScrollView(
        child: Column(children: [
          TicketAvaibleWidgets(),
          SizedBox(
            height: 30,
          ),
          Text(
            'HISTÓRICO',
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 330,
          ),
          _listButton()
        ]),
      ),
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

class UtilsListHomeWidget extends StatelessWidget {
  const UtilsListHomeWidget({
    Key? key,
    required this.textButtonWidget,
    required this.iconButton,
  }) : super(key: key);
  final String textButtonWidget;
  final IconData iconButton;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 3, 160, 155),
          borderRadius: BorderRadius.circular(10)),
      width: 100,
      height: 95,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Icon(
              iconButton,
              color: Color.fromARGB(255, 83, 233, 225),
              size: 30,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              textButtonWidget,
              style: TextStyle(
                  color: Color.fromARGB(255, 241, 241, 241),
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}

Widget _listButton() {
  return SizedBox(
    height: 120,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: const [
        Padding(
          padding:  EdgeInsets.only(left: 15, top: 8, bottom: 8),
          child: UtilsListHomeWidget(
            textButtonWidget: 'UTILIZAR\nBILHETE',
            iconButton: Icons.qr_code,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 8, top: 8, bottom: 8),
          child: UtilsListHomeWidget(
            textButtonWidget: 'UTILIZAR\nBILHETE',
            iconButton: Icons.add,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 8, top: 8, bottom: 8),
          child: UtilsListHomeWidget(
            textButtonWidget: 'UTILIZAR\nBILHETE',
            iconButton: Icons.wallet,
          ),
        ),
        Padding(
          padding:  EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 8),
          child: UtilsListHomeWidget(
            textButtonWidget: 'UTILIZAR\nBILHETE',
            iconButton: Icons.map,
          ),
        ),
      ],
    ),
  );
}
