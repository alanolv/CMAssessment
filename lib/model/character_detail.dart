class CharacterDetail {

  final String name;
  final String image;
  final String status;
  final String species;
  final String gender;
  final String locationName;

  CharacterDetail({

    required this.name,
    required this.image,
    required this.status,
    required this.species,
    required this.gender,
    required this.locationName,
  });

  factory CharacterDetail.fromJson(Map<String, dynamic> json) {
    return CharacterDetail(
      name: json['name'],
      image: json['image'],
      status: json['status'],
      species: json['species'],
      gender:json['gender'],
      locationName: json['location']?['name'] ?? 'Unknown',
    );
  }

}