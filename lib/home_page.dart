import 'package:flutter/material.dart';
import 'package:top_app_clone/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding:
              const EdgeInsets.only(left: 90, top: 80, bottom: 80, right: 50),
          child: Image.network(
              'https://whatsapp.boradetop.com.br/assets/images/bom/logo_top_preto.png'),
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
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.help_outline,
                color: Color.fromARGB(255, 3, 224, 217),
              )),
          SizedBox(width: 5)
        ],
        backgroundColor: Color.fromARGB(255, 63, 62, 62),
      ),
    );
  }
}
