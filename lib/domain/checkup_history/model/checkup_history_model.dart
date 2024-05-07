class CheckupHistoryModel {
  List<Checkup> checkups;

  CheckupHistoryModel({required this.checkups});

  factory CheckupHistoryModel.fromJson(Map<String, dynamic> json) {
    return CheckupHistoryModel(
      checkups: [
        ...(json['checkupResult'] as List)
            .map((i) => Checkup.fromJson(i))
            .toList(),
      ],
    );
  }
}

class Checkup {
  List<CheckupItem> equipments;
  List<CheckupItem> medicine;
  DateTime createdAt;
  String description;
  String doctorIncharge;
  Checkup({
    required this.equipments,
    required this.medicine,
    required this.createdAt,
    required this.description,
    required this.doctorIncharge,
  });

  factory Checkup.fromJson(Map<String, dynamic> json) {
    return Checkup(
      equipments: (json['equipment'] as List)
          .map((i) => CheckupItem.fromJson(i))
          .toList(),
      medicine: (json['medicine'] as List)
          .map((i) => CheckupItem.fromJson(i))
          .toList(),
      createdAt: DateTime.parse(json['createdAt']),
      description: json['description'],
      doctorIncharge: json['doctor_incharge'],
    );
  }
}

class CheckupItem {
  String name;
  int quantity;

  CheckupItem({required this.name, required this.quantity});

  factory CheckupItem.fromJson(Map<String, dynamic> json) {
    return CheckupItem(
      name: json['name'],
      quantity: json['quantity'],
    );
  }
}
