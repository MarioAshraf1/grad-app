
import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  late  String message;
  late  DateTime date;
  late  String uId;

  MessageModel({required this.message, required this.date, required this.uId});

   MessageModel.fromJson(json){
     message = json['message'];
     date = (json['date'] as Timestamp).toDate();
     uId = json['uId'];
   }

  Map<String, dynamic> toJson() {
    return {
      'message': message,
      'date': date,
      'uId': uId,
    };
  }
}
