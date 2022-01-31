class Beer{
  int id;
  String name;
  String description;
  String imageurl;

  Beer({
    required this.id,
    required this.name,
    required this.description,
    required this.imageurl
  });

  factory Beer.fromJson(Map<String, dynamic> json){
    return Beer(
      id: json['id'] == null ? -1 : json['id'] as int,
      name: json['name'] == null ? 'Missing' : json['name'] as String,
      description: json['description'] == null ? 'Missing' : json['description'] as String,
      imageurl: json['image_url'] == null ? 'Missing' : json['image_url'] as String,
    );
  }
}