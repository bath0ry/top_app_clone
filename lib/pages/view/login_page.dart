import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:top_app_clone/components/icons_login_page.dart';
import 'package:top_app_clone/home/view/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? cpf = '';
  String? password = '';
  var isLoading = false;
  final formKey = GlobalKey<FormState>();
  void login({
    required String cpf,
    required String password,
  }) async {
    isLoading = true;
    setState(() {});
    final response = await apiLogin(cpf: cpf, password: password);
    isLoading = false;
    setState(() {});
    if (response) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const HomePage()),
          (route) => false);
    }
  }

  bool validiate() {
    final form = formKey.currentState!;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  String? validateCpf(String? cpf) => cpf != null && cpf.length == 11
      ? null
      : 'O CPF é inválido. Digite sem pontos e traços';
  String? validatePassword(String? password) =>
      password != null && password.length >= 6
          ? null
          : 'A senha precisa ter no minimo 6 caractéres';

  Future<bool> apiLogin({required String cpf, required String password}) async {
    final response = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: cpf, password: password);
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/WhatsApp_Image_2022-09-24_at_20.50.08-removebg-preview.png',
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 5),
                  child: TextFormField(
                    validator: (value) => validateCpf(value),
                    onSaved: (value) => cpf = value,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                    autocorrect: true,
                    keyboardType: TextInputType.number,
                    autofocus: false,
                    decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 53, 53, 53),
                        border: OutlineInputBorder(),
                        labelText: 'Seu CPF',
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 66),
                            fontSize: 15,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 5),
                  child: TextFormField(
                    validator: (value) => validatePassword(value),
                    onSaved: (value) => password = value,
                    obscureText: true,
                    maxLength: 15,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: const InputDecoration(
                        fillColor: Color.fromARGB(255, 53, 53, 53),
                        border: OutlineInputBorder(),
                        labelText: 'Sua Senha',
                        labelStyle: TextStyle(
                            color: Color.fromARGB(255, 0, 68, 66),
                            fontSize: 15,
                            fontWeight: FontWeight.w900)),
                  ),
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
                if (isLoading)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircularProgressIndicator(
                        color: Color.fromARGB(255, 0, 68, 66),
                        strokeWidth: 9,
                      ),
                    ],
                  )
                else
                  Padding(
                    padding: const EdgeInsets.only(left: 50, right: 50),
                    child: ElevatedButton(
                      onPressed: () {
                        if (validiate()) {
                          login(cpf: cpf!, password: password!);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 0, 68, 66),
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
      ),
    );
  }
}
