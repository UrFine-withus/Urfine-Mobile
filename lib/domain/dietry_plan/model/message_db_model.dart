import 'package:hive/hive.dart';
part 'message_db_model.g.dart';

@HiveType(typeId: 1)
class MessageDBModel {
  @HiveField(0)
  String id;
  
  @HiveField(1)
  String message;

  @HiveField(2)
  String sender;

  @HiveField(3)
  DateTime timestamp;

  MessageDBModel({
   required this.id,
   required this.message,
   required this.sender,
  required  this.timestamp,
  });
}
