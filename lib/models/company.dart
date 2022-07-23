class Company {
  String id;
  final String name;
  final String address;
  final String description;
  final String url;
  final String imgUrl;
  final List<Map<String, dynamic>> listings;

  Company(
      {this.id = "",
      required this.name,
      required this.address,
      required this.description,
      required this.url,
      required this.imgUrl,
      required this.listings});

  static Company fromJson(Map<String, dynamic> json, String id) => Company(
      id: id,
      name: json["name"],
      address: json["address"],
      description: json["description"],
      url: json["url"],
      imgUrl: json["imgUrl"],
      listings: List<Map<String, dynamic>>.from(json["listings"]));
}
