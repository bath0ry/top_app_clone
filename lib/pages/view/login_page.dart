import 'package:flutter/material.dart';
import 'package:top_app_clone/components/icons_login_page.dart';
import 'package:top_app_clone/components/login_widgets.dart';
import 'package:top_app_clone/home/view/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/WhatsApp_Image_2022-09-24_at_20.50.08-removebg-preview.png',
            ),
            const LoginCustomFormFieldWidget(
              labelText: "Seu CPF",
              padding: EdgeInsets.fromLTRB(30, 30, 30, 5),
              maxLength: 11,
              obscureText: false,
              keyboardType: TextInputType.number,
              fillColor: Color.fromARGB(255, 53, 53, 53),
            ),
            const LoginCustomFormFieldWidget(
              labelText: "Sua senha",
              padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
              maxLength: 16,
              obscureText: true,
              keyboardType: TextInputType.text,
              fillColor: Color.fromARGB(255, 53, 53, 53),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 33, top: 0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text("Esqueci a senha",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((context) => HomePage()),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 0, 68, 66),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7))),
                child: const Padding(
                  padding: EdgeInsets.all(13),
                  child: Text(
                    "ENTRAR",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50, top: 5),
              child: TextButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.white),
                child: const Text(
                  "Sair",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                IconsLoginPageWidgets(
                    widgetIcon: Icons.qr_code_2, textIcons: 'BILHETES'),
                IconsLoginPageWidgets(
                    widgetIcon: Icons.map, textIcons: 'MAPA DAS ESTAÇÕES'),
                IconsLoginPageWidgets(
                    textIcons: 'FALE CONOSCO', widgetIcon: Icons.whatsapp)
              ],
            )
          ],
        ),
      ),
    );
  }
}
