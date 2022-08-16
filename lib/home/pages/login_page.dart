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
                labelText: "CPF",
                padding: EdgeInsets.all(30),
                maxLength: 11,
                obscureText: false,
                keyboardType: TextInputType.number,
              ),
              const LoginCustomFormFieldWidget(
                labelText: "Password",
                padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
                maxLength: 16,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 33, top: 10),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Redefinir Senha",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "ENTRAR",
                    style: TextStyle(
                        color: Color.fromARGB(255, 25, 25, 25),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 4, 247, 239),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              )
            ],
          ),
        ),
      ),
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
  }) : super(key: key);
  final String labelText;
  final EdgeInsetsGeometry padding;
  final int maxLength;
  final bool obscureText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextField(
        obscureText: obscureText,
        maxLength: maxLength,
        style: const TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        autocorrect: true,
        keyboardType: keyboardType,
        autofocus: true,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            labelText: labelText,
            labelStyle: const TextStyle(
                color: Color.fromARGB(255, 3, 224, 217),
                fontSize: 20,
                fontWeight: FontWeight.w900)),
      ),
    );
  }
}
