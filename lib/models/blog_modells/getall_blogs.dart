class AllBlogs {
  final int? statusCode;
  final ResponseData? responseData;
  final DateTime? time;

  AllBlogs({
    required this.statusCode,
    required this.responseData,
    required this.time,
  });

  factory AllBlogs.fromJson(Map<String, dynamic> json) {
    return AllBlogs(
      statusCode: json["statusCode"],
      responseData: json["responseData"] == null
          ? null
          : ResponseData.fromJson(json["responseData"]),
      time: DateTime.tryParse(json["time"] ?? ""),
    );
  }
}

class ResponseData {
  final List<AllBlog> allBlogs;
  final dynamic totalPages;
  final String? message;

  ResponseData({
    required this.allBlogs,
    required this.totalPages,
    required this.message,
  });

  factory ResponseData.fromJson(Map<String, dynamic> json) {
    return ResponseData(
      allBlogs: json["allBlogs"] == null
          ? []
          : List<AllBlog>.from(
              json["allBlogs"]!.map((x) => AllBlog.fromJson(x))),
      totalPages: json["totalPages"],
      message: json["message"],
    );
  }
}

class AllBlog {
  AllBlog({
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

  factory AllBlog.fromJson(Map<String, dynamic> json) {
    return AllBlog(
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
    required this.ar,
    required this.en,
  });

  final String? ar;
  final String? en;

  factory Content.fromJson(Map<String, dynamic> json) {
    return Content(
      ar: json["ar"],
      en: json["en"],
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
