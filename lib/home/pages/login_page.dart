import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 111, 109, 109),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginCustomFormFieldWidget(labelText: "E-mail"),
              LoginCustomFormFieldWidget(labelText: "Password"),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Entrar"),
                  style: ElevatedButton.styleFrom(
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
  }) : super(key: key);
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: TextField(
        style: const TextStyle(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
        autocorrect: true,
        keyboardType: TextInputType.emailAddress,
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
