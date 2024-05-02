class AllUsers {
  AllUsers({
    required this.responseData,
    required this.time,
  });

  final List<ResponseData> responseData;
  final DateTime? time;

  factory AllUsers.fromJson(Map<String, dynamic> json) {
    return AllUsers(
      responseData: json["responseData"] == null
          ? []
          : List<ResponseData>.from(
              json["responseData"]!.map((x) => ResponseData.fromJson(x))),
      time: DateTime.tryParse(json["time"] ?? ""),
    );
  }
}

class ResponseData {
  ResponseData({
    required this.favouritePlaces,
    required this.id,
    required this.userName,
    required this.role,
    required this.password,
    required this.phoneNumber,
    required this.email,
    required this.notificationSetting,
    required this.isLogin,
    required this.isProfileComplete,
    required this.isOnboardingComplete,
    required this.accountStatus,
    required this.interests,
    required this.saved,
    required this.dateJoined,
    required this.recentSearch,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    required this.address,
    required this.city,
    required this.country,
  });

  final List<dynamic> favouritePlaces;
  final String? id;
  final String? userName;
  final String? role;
  final String? password;
  final String? phoneNumber;
  final String? email;
  final int? notificationSetting;
  final bool? isLogin;
  final bool? isProfileComplete;
  final bool? isOnboardingComplete;
  final String? accountStatus;
  final List<Interest> interests;
  final List<dynamic> saved;
  final DateTime? dateJoined;
  final List<dynamic> recentSearch;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;
  final String? address;
  final String? city;
  final String? country;

  factory ResponseData.fromJson(Map<String, dynamic> json) {
    return ResponseData(
      favouritePlaces: json["favouritePlaces"] == null
          ? []
          : List<dynamic>.from(json["favouritePlaces"]!.map((x) => x)),
      id: json["_id"],
      userName: json["userName"],
      role: json["role"],
      password: json["password"],
      phoneNumber: json["phoneNumber"],
      email: json["email"],
      notificationSetting: json["notificationSetting"],
      isLogin: json["isLogin"],
      isProfileComplete: json["isProfileComplete"],
      isOnboardingComplete: json["isOnboardingComplete"],
      accountStatus: json["accountStatus"],
      interests: json["interests"] == null
          ? []
          : List<Interest>.from(
              json["interests"]!.map((x) => Interest.fromJson(x))),
      saved: json["saved"] == null
          ? []
          : List<dynamic>.from(json["saved"]!.map((x) => x)),
      dateJoined: DateTime.tryParse(json["dateJoined"] ?? ""),
      recentSearch: json["recentSearch"] == null
          ? []
          : List<dynamic>.from(json["recentSearch"]!.map((x) => x)),
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      v: json["__v"],
      address: json["address"],
      city: json["city"],
      country: json["country"],
    );
  }
}

class Interest {
  Interest({
    required this.interestId,
    required this.id,
  });

  final InterestId? interestId;
  final String? id;

  factory Interest.fromJson(Map<String, dynamic> json) {
    return Interest(
      interestId: json["interestId"] == null
          ? null
          : InterestId.fromJson(json["interestId"]),
      id: json["_id"],
    );
  }
}

class InterestId {
  InterestId({
    required this.title,
    required this.isDelete,
    required this.id,
    required this.image,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  final Title? title;
  final IsDelete? isDelete;
  final String? id;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  factory InterestId.fromJson(Map<String, dynamic> json) {
    return InterestId(
      title: json["title"] == null ? null : Title.fromJson(json["title"]),
      isDelete:
          json["isDelete"] == null ? null : IsDelete.fromJson(json["isDelete"]),
      id: json["_id"],
      image: json["image"],
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      v: json["__v"],
    );
  }
}

class IsDelete {
  IsDelete({
    required this.delete,
  });

  final bool? delete;

  factory IsDelete.fromJson(Map<String, dynamic> json) {
    return IsDelete(
      delete: json["delete"],
    );
  }
}

class Title {
  Title({
    required this.ar,
    required this.en,
  });

  final String? ar;
  final String? en;

  factory Title.fromJson(Map<String, dynamic> json) {
    return Title(
      ar: json["ar"],
      en: json["en"],
    );
  }
}
