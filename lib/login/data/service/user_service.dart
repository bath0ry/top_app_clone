import 'package:dio/dio.dart';
import 'package:top_app_clone/login/data/model/user_model.dart';

class UserService {
  final Dio dio;

  UserService(this.dio);

  Future<void> login(UserModel userModel) async {
    try {
      final user = userModel.toJson()["data"];

      await dio
          .post('https://api.jsonbin.io/v3/qs/638beb30003d6444ce623d0c', data: {
        "cpf": user["cpf"],
        "senha": user["senha"],
      });
    } catch (e) {
      throw Exception('Erro ao logar');
    }
  }
}
