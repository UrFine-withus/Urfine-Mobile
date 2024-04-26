class HealthLogsModel {
  String id;
  String userID;
  List<HealthLog> healthLog;
  DateTime createdAt;
  int v;

  HealthLogsModel({
    required this.id,
    required this.userID,
    required this.healthLog,
    required this.createdAt,
    required this.v,
  });

  factory HealthLogsModel.fromJson(Map<String, dynamic> json) =>
      HealthLogsModel(
        id: json["_id"],
        userID: json["_userID"],
        healthLog: List<HealthLog>.from(
            json["healthlog"].map((x) => HealthLog.fromJson(x))),
        createdAt: DateTime.parse(json["createdAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "_userID": userID,
        "healthlog": List<dynamic>.from(healthLog.map((x) => x.toJson())),
        "createdAt": createdAt.toIso8601String(),
        "__v": v,
      };
}

class HealthLog {
  String label;
  String normalValue;
  String currentValue;
  String level;
  HealthLog({
    required this.label,
    required this.normalValue,
    required this.currentValue,
    required this.level,
  });

  factory HealthLog.fromJson(Map<String, dynamic> json) => HealthLog(
        label: json["label"],
        normalValue: json["normal_value"],
        currentValue: json["current_value"],
        level: _getLevel(json["level"]),
      );
  static String _getLevel(int value) {
    switch (value) {
      case -1:
        return "Low";
      case 0:
        return "Normal";
      case 1:
        return "High";
      default:
        return "Normal";
    }
  }

  Map<String, dynamic> toJson() => {
        "label": label,
        "normal_value": normalValue,
        "current_value": currentValue,
      };
}
