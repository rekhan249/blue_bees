class SingleBloging {
  SingleBloging({
    required this.statusCode,
    required this.responseData,
    required this.time,
  });

  final int? statusCode;
  final ResponseDataValue? responseData;
  final DateTime? time;

  factory SingleBloging.fromJson(Map<String, dynamic> json) {
    return SingleBloging(
      statusCode: json["statusCode"],
      responseData: json["responseData"] == null
          ? null
          : ResponseDataValue.fromJson(json["responseData"]),
      time: DateTime.tryParse(json["time"] ?? ""),
    );
  }
}

class ResponseDataValue {
  ResponseDataValue({
    required this.title,
    required this.content,
    required this.isDelete,
    required this.id,
    required this.publisherId,
    required this.image,
    required this.isFeatured,
    required this.isApproved,
    required this.interests,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  final Content? title;
  final Content? content;
  final IsDelete? isDelete;
  final String? id;
  final String? publisherId;
  final String? image;
  final bool? isFeatured;
  final bool? isApproved;
  final List<Interest> interests;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  factory ResponseDataValue.fromJson(Map<String, dynamic> json) {
    return ResponseDataValue(
      title: json["title"] == null ? null : Content.fromJson(json["title"]),
      content:
          json["content"] == null ? null : Content.fromJson(json["content"]),
      isDelete:
          json["isDelete"] == null ? null : IsDelete.fromJson(json["isDelete"]),
      id: json["_id"],
      publisherId: json["publisherId"],
      image: "http://24.199.74.131:8086/${json["image"]}",
      isFeatured: json["isFeatured"],
      isApproved: json["isApproved"],
      interests: json["interests"] == null
          ? []
          : List<Interest>.from(
              json["interests"]!.map((x) => Interest.fromJson(x))),
      createdAt: DateTime.tryParse(json["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(json["updatedAt"] ?? ""),
      v: json["__v"],
    );
  }
}

class Content {
  Content({
    required this.en,
    required this.ar,
  });

  final String? en;
  final String? ar;

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      en: json["en"],
      ar: json["ar"],
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

  final Content? title;
  final IsDelete? isDelete;
  final String? id;
  final String? image;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final int? v;

  factory InterestId.fromJson(Map<String, dynamic> json) {
    return InterestId(
      title: json["title"] == null ? null : Content.fromJson(json["title"]),
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
