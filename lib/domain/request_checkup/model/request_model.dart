class RequestModel {
  String details;
  int? spO2Level;
  int? bloodPressure;
  RequireNeedsModel requireNeeds;
  RequestModel({
    required this.details,
    required this.spO2Level,
    required this.bloodPressure,
    required this.requireNeeds,
  });
   Map<String, dynamic> toJson() {
    return {
      'details': details,
      'spO2_level': spO2Level,
      'blood_pressure': bloodPressure,
      'requireNeeds': requireNeeds.toJson(),
    };
  }
}
class RequireNeedsModel {
  bool doctorNeeded;
  bool nurseAssistance;
  String equipmentsNeeded;
  RequireNeedsModel({
    required this.doctorNeeded,
    required this.nurseAssistance,
    required this.equipmentsNeeded,
  });
  Map<String, dynamic> toJson() {
    return {
      'doctor_needed': doctorNeeded,
      'nurse_assistance': nurseAssistance,
      'equipments_needed': equipmentsNeeded,
    };
  }
}