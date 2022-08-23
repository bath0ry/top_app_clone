class User {
  User({
    required this.email,
    required this.senha,
  });

  final String email;
  final String senha;

  factory User.fromJson(Map<String, dynamic> json) => User(
        email: json["email"],
        senha: json["senha"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "senha": senha,
      };
}
