enum EmergencyContactType { hospital, bloodBank, ambulance, clinic }

class EmergencyModel {
  List<EmergencyContact> emergency;

  EmergencyModel({required this.emergency});

  factory EmergencyModel.fromJson(Map<String, dynamic> json) {
    return EmergencyModel(
      emergency: json.containsKey('emergency')
          ? (json['emergency'] as List)
              .map((e) => EmergencyContact.fromJson(e))
              .toList()
          : [],
    );
  }
}

class EmergencyContact {
  String id;
  String profile;
  String name;
  String? address;
  String? phone;
  String? mobile;
  String? location;
  String createdAt;
  int v;

  EmergencyContact({
    required this.id,
    required this.profile,
    required this.name,
    required this.address,
    required this.phone,
    required this.mobile,
    required this.location,
    required this.createdAt,
    required this.v,
  });

  factory EmergencyContact.fromJson(Map<String, dynamic> json) {
    return EmergencyContact(
      id: json['_id'],
      profile: json['profile'],
      name: json['name'],
      address: json.containsKey('address') ? json['address'] : null,
      phone: json.containsKey('phone') ? json['phone'] : null,
      mobile: json.containsKey('mobile') ? json['mobile'] : null,
      location: json.containsKey('location') ? json['location'] : null,
      createdAt: json['createdAt'],
      v: json['__v'],
    );
  }
}
