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
}
