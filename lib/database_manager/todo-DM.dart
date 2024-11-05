import 'package:cloud_firestore/cloud_firestore.dart';

class TodoDm {
  static const String collectionName = "todo";
  late String id;
  late String title;
  late String description;
  late Timestamp date;
  late bool isDone;

  TodoDm(
      {required this.id, required this.title, required this.description, required this.date, required this.isDone });


  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "data": date,
        "isDone": isDone,
      };

  TodoDm.fromJson(Map<String,dynamic> json){
  id = json["id"];
  title = json["title"];
  description = json["description"];
  date = json["date"];
  isDone = json["isDone"];
  }
}
