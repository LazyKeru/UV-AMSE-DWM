class Beer{
  String datasetid;
  String recordid;
  Fields fields;

  Beer({
    required this.datasetid,
    required this.recordid,
    required this.fields,
  });

  factory Beer.fromJson(Map<String, dynamic> json){
    return Beer(
      datasetid: json['datasetid'] as String, 
      recordid: json['recordid'] as String, 
      fields: Fields.fromJson(json['fields']),
    );
  }
}

class Fields{
  String country;
  double abv;
  String city;
  String namebreweries;
  String name;
  String stylename;

  Fields({
    required this.country,
    required this.abv,
    required this.city,
    required this.namebreweries,
    required this.name,
    required this.stylename
  });

  factory Fields.fromJson(Map<String, dynamic> json){
    return Fields(
      country: json['country'] == null ? 'Missing' : json['country'] as String,
      abv: json['abv'] == null ? 0.0 : json['abv'] as double,
      city: json['city'] == null ? 'Missing' : json['city'] as String,
      namebreweries: json['name_breweries'] == null ? 'Missing' : json['name_breweries'] as String,
      name: json['name'] == null ? 'Missing' : json['name'] as String,
      stylename: json['style_name'] == null ? 'Missing' : json['style_name'] as String,
    );
  }

}