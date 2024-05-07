class MedicalRecordModel {
  List<Prescription> prescription;

  MedicalRecordModel({required this.prescription});

  factory MedicalRecordModel.fromJson(Map<String, dynamic> json) {
    return MedicalRecordModel(
      prescription: (json['prescription'] as List)
          .map((i) => Prescription.fromJson(i))
          .toList(),
    );
  }
}

class Prescription {
  String id;
  String userId;
  List<String> prescriptionImageUrl;
  String uploadMonth;
  DateTime createdAt;

  Prescription({
    required this.id,
    required this.userId,
    required this.prescriptionImageUrl,
    required this.uploadMonth,
    required this.createdAt,
  });

  factory Prescription.fromJson(Map<String, dynamic> json) {
    return Prescription(
      id: json['_id'],
      userId: json['_userID'],
      prescriptionImageUrl: List<String>.from(json['prescription_image_url']),
      uploadMonth: json['upload_month'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }
}
