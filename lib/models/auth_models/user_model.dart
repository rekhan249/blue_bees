class User {
  User({
    required this.id,
    required this.userName,
    required this.phoneNumber,
    required this.email,
    required this.notificationSetting,
    required this.favouritePlaces,
    required this.isLogin,
    required this.isProfileComplete,
    required this.isOnboardingComplete,
    required this.role,
    required this.interests,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  final String? id;
  final String? userName;
  final String? phoneNumber;
  final String? email;
  final int? notificationSetting;
  final List<dynamic> favouritePlaces;
  final bool? isLogin;
  final bool? isProfileComplete;
  final bool? isOnboardingComplete;
  final String? role;
  final List<dynamic> interests;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["_id"],
      userName: json["userName"],
      phoneNumber: json["phoneNumber"],
      email: json["email"],
      notificationSetting: json["notificationSetting"],
      favouritePlaces: json["favouritePlaces"] == null
          ? []
          : List<dynamic>.from(json["favouritePlaces"]!.map((x) => x)),
      isLogin: json["isLogin"],
      isProfileComplete: json["isProfileComplete"],
      isOnboardingComplete: json["isOnboardingComplete"],
      role: json["role"],
      interests: json["interests"] == null
          ? []
          : List<dynamic>.from(json["interests"]!.map((x) => x)),
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      v: json["__v"],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'userName': userName,
      'phoneNumber': phoneNumber,
      'email': email,
      'notificationSetting': notificationSetting,
      'favouritePlaces': favouritePlaces,
      'isLogin': isLogin,
      'isProfileComplete': isProfileComplete,
      'isOnboardingComplete': isOnboardingComplete,
      'role': role,
      'interests': interests,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'updatedAt': updatedAt?.millisecondsSinceEpoch,
      'v': v,
    };
  }
}
