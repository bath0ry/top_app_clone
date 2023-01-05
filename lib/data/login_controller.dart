import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginController {
  String? cpf = '';
  String? password = '';
  var isLoading = false;
  final formKey = GlobalKey<FormState>();
  final VoidCallback onSuccessLogin;
  final VoidCallback onUpdate;

  var _hasError = '';
  String get hasError => _hasError;
  set hasError(String value) {
    _hasError = value;
    onUpdate();
  }

  LoginController({required this.onSuccessLogin, required this.onUpdate});

  void login({
    required String cpf,
    required String password,
  }) async {
    try {
      isLoading = true;
      onUpdate();
      final response = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: cpf!, password: password!);
      isLoading = false;
      onUpdate();
      if (response.user != null) {
        onSuccessLogin();
      }
    } catch (e) {
      hasError =
          'Não foi possível fazer login. Verifique se seu CPF ou Senha está correto';
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

    Future<bool> apiLogin(
        {required String cpf, required String password}) async {
      return true;
    }
  }
}
