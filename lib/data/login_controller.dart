import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginController {
  String? email = '';
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
    required String email,
    required String password,
  }) async {
    try {
      isLoading = true;
      onUpdate();
      final response = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      isLoading = false;
      onUpdate();
      if (response.user != null) {
        onSuccessLogin();
      }
    } catch (e) {
      isLoading = false;
      hasError =
          'Não foi possivel efetuar login.\nVerifique seu email ou senha se estão corretos.';
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

  String? validateEmail(String? email) =>
      email != null ? null : 'O email é inválido.';
  String? validatePassword(String? password) =>
      password != null && password.length >= 6
          ? null
          : 'A senha precisa ter no minimo 6 caractéres';

  Future<bool> apiLogin(
      {required String email, required String password}) async {
    return true;
  }
}
