class UserModel {
  UserModel({
    required this.cpf,
    required this.senha,
  });

  String cpf;
  String senha;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        cpf: json["cpf"],
        senha: json["senha"],
      );

  Map<String, dynamic> toJson() => {
        "cpf": cpf,
        "senha": senha,
      };
}
