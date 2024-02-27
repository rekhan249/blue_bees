class SignUpModel {
  final String userName;
  final String phoneNumber;
  final String email;
  final String role;
  final String password;

  SignUpModel(
      {required this.userName,
      required this.phoneNumber,
      required this.email,
      required this.role,
      required this.password});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userName': userName,
      'phoneNumber': phoneNumber,
      'email': email,
      'role': role,
      'password': password,
    };
  }

  factory SignUpModel.fromMap(Map<String, dynamic> map) => SignUpModel(
      userName: map["userName"],
      phoneNumber: map["phoneNumber"],
      email: map["email"],
      role: map["role"],
      password: map["password"]);
}

class SignInModel {
  final String phoneNumber;

  SignInModel({required this.phoneNumber});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'phoneNumber': phoneNumber,
    };
  }

  factory SignInModel.fromMap(Map<String, dynamic> map) {
    return SignInModel(
      phoneNumber: map['phoneNumber'] as String,
    );
  }
}
