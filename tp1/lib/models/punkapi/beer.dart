class Beer{
  int id;
  String name;
  String tagline;
  String firstbrewed;
  String description;
  double abv;
  double ibu;
  String imageurl;

  Beer({
    required this.id,
    required this.name,
    required this.tagline,
    required this.firstbrewed,
    required this.description,
    required this.abv,
    required this.ibu,
    required this.imageurl,
  });

  factory Beer.fromJson(Map<String, dynamic> json){
    return Beer(
      id: json['id'] == null ? -1 : json['id'] as int,
      name: json['name'] == null ? 'Missing' : json['name'] as String,
      tagline: json['tagline'] == null ? 'Missing' : json['tagline'] as String,
      firstbrewed: json['first_brewed'] == null ? 'Missing' : json['first_brewed'] as String,
      description: json['description'] == null ? 'Missing' : json['description'] as String,
      abv: json['abv'] == null ? -1 : json['abv'] as double,
      ibu: json['ibu'] == null ? -1 : json['ibu'] as double,
      imageurl: json['image_url'] == null ? 'Missing' : json['image_url'] as String,
    );
  }
}