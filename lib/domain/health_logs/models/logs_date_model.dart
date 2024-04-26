class LogsDateModel {
  List<Map<String, dynamic>> userLogDates;

  LogsDateModel({required this.userLogDates});

  factory LogsDateModel.fromJson(Map<String, dynamic> json) {
    return LogsDateModel(
      userLogDates: (json['UserLogDates'] as List).map((dateString) {
        return {
          'string_date': dateString,
          'date': DateTime.parse(dateString),
        };
      }).toList(),
    );
  }
}