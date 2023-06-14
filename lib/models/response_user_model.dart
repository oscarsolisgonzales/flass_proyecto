class ResponseUserModel {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<User>? data;

  ResponseUserModel({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
  });

  factory ResponseUserModel.fromJson(Map<String, dynamic> json) {
    print(json);
    return ResponseUserModel(
      page: json["page"],
      perPage: json["per_page"],
      total: json["total"],
      totalPages: json["total_pages"],
      data: List<User>.from(json["data"].map((x) => User.fromJson(x))),
    );
  }
}

class User {
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  User({
    required this.id,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    print(json);
    return User(
      id: json["id"],
      email: json["email"],
      firstName: json["first_name"],
      lastName: json["last_name"],
      avatar: json["avatar"],
    );
  }
}
