import 'package:dio/dio.dart';
import 'package:top_app_clone/home/data/model/user_model.dart';

class UserService {
  final Dio dio;

  UserService(this.dio);

  Future<void> login(User userModel) async {
    try {
      final user = userModel.toJson()["data"];

      await dio
          .post('https://api.jsonbin.io/v3/b/63050384a1610e63860bda14', data: {
        "email": user["email"],
        "senha": user["senha"],
      });
    } catch (e) {
      throw Exception('Erro ao logar');
    }
  }
}
