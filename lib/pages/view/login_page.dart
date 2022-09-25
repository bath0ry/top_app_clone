import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LoginCustomFormFieldWidget(
                labelText: "Seu CPF",
                padding: EdgeInsets.fromLTRB(30, 120, 30, 5),
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
                  onPressed: () {},
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
      ),
    );
  }
}

class IconsLoginPageWidgets extends StatelessWidget {
  const IconsLoginPageWidgets({
    Key? key,
    required this.textIcons,
    required this.widgetIcon,
  }) : super(key: key);

  final String textIcons;
  final IconData widgetIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 30,
        ),
        GestureDetector(
          child: Column(
            children: [
              Icon(
                widgetIcon,
                color: const Color.fromARGB(255, 3, 160, 155),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                textIcons,
                maxLines: 2,
                style: const TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w400),
              )
            ],
          ),
        )
      ],
    );
  }
}

class LoginCustomFormFieldWidget extends StatelessWidget {
  const LoginCustomFormFieldWidget({
    Key? key,
    required this.labelText,
    required this.padding,
    required this.maxLength,
    required this.obscureText,
    required this.keyboardType,
    required this.fillColor,
  }) : super(key: key);
  final String labelText;
  final EdgeInsetsGeometry padding;
  final int maxLength;
  final bool obscureText;
  final TextInputType keyboardType;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextFormField(
        obscureText: obscureText,
        maxLength: maxLength,
        style: const TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        autocorrect: true,
        keyboardType: keyboardType,
        autofocus: false,
        decoration: InputDecoration(
            fillColor: fillColor,
            border: const OutlineInputBorder(),
            labelText: labelText,
            labelStyle: const TextStyle(
                color: Color.fromARGB(255, 0, 68, 66),
                fontSize: 15,
                fontWeight: FontWeight.w900)),
      ),
    );
  }
}
