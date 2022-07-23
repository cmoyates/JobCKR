class Mentor {
  String id;
  final String name;
  final String email;
  final String imgUrl;

  Mentor(
      {this.id = "",
      required this.name,
      required this.email,
      required this.imgUrl});

  static Mentor fromJson(Map<String, dynamic> json, String id) => Mentor(
      id: id, name: json["name"], email: json["email"], imgUrl: json["imgUrl"]);
}
