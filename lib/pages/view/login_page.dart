import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:top_app_clone/components/icons_login_page.dart';

import 'package:top_app_clone/home/view/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerCpf = TextEditingController();

  TextEditingController controllerSenha = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
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
                    validator: (String? value) {
                      if (value!.isEmpty) {
                        return 'Insira um CPF válido';
                      }
                      return null;
                    },
                    controller: controllerCpf,
                    maxLength: 11,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                    autocorrect: true,
                    keyboardType: TextInputType.number,
                    autofocus: false,
                    onChanged: (text) {
                      setState(() {});
                    },
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 53, 53, 53),
                        border: const OutlineInputBorder(),
                        labelText: 'Seu CPF',
                        labelStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 68, 66),
                            fontSize: 15,
                            fontWeight: FontWeight.w900)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(30, 30, 30, 5),
                  child: TextFormField(
                    onChanged: (text) {
                      setState(() {});
                    },
                    validator: (String? value) {
                      if (value != null && value.isEmpty) {
                        return 'Senha errada ou inválida';
                      }
                      return null;
                    },
                    controller: controllerSenha,
                    obscureText: true,
                    maxLength: 11,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                    keyboardType: TextInputType.text,
                    autofocus: false,
                    decoration: InputDecoration(
                        fillColor: Color.fromARGB(255, 53, 53, 53),
                        border: const OutlineInputBorder(),
                        labelText: 'Sua Senha',
                        labelStyle: const TextStyle(
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
                Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (BuildContext context) => HomePage()));
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
