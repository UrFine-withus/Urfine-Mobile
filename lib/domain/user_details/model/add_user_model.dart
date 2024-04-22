class AddUserModel {
  String userID;
  String name;
  String age;
  String gender;
  String address;
  int height;
  int weight;
  String bloodGroup;
  SufferedDiseases sufferedDiseases;

  AddUserModel({
    required this.userID,
    required this.name,
    required this.age,
    required this.gender,
    required this.address,
    required this.height,
    required this.weight,
    required this.bloodGroup,
    required this.sufferedDiseases,
  });
  Map<String, dynamic> toJson() {
    return {
      '_userID': userID,
      'name': name,
      'age': age,
      'gender': gender,
      'address': address,
      'height': height,
      'weight': weight,
      'bloodGroup': bloodGroup,
      'sufferedDiseases': sufferedDiseases.toJson(),
    };
  }
  factory AddUserModel.fromJson(Map<String, dynamic> json) {
    return AddUserModel(
      userID: json['_userID'],
      name: json['name'],
      age: json['age'].toString(),
      gender: json['gender'],
      address: json['address'],
      height: json['height'],
      weight: json['weight'],
      bloodGroup: json['bloodGroup'],
      sufferedDiseases: SufferedDiseases.fromJson(json['sufferedDiseases']),
    );
  }
}

class SufferedDiseases {
  bool chickenPox;
  bool measles;
  bool hepatitis;
  String allergies;

  SufferedDiseases({
    required this.chickenPox,
    required this.measles,
    required this.hepatitis,
    required this.allergies,
  });
  Map<String, dynamic> toJson() {
    return {
      'chickenPox': chickenPox,
      'measeles': measles,
      'hepatitis': hepatitis,
      'allergies': allergies,
    };
  }
  factory SufferedDiseases.fromJson(Map<String, dynamic> json) {
    return SufferedDiseases(
      chickenPox: json['chickenPox'],
      measles: json['measeles'],
      hepatitis: json['hepatitis'],
      allergies: json['allergies'],
    );
  }
}
