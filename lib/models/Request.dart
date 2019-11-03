import 'dart:convert';

Request requestFromJson(String str) => Request.fromJson(json.decode(str));

String requestToJson(Request data) => json.encode(data.toJson());

class Request {
  int id;
  String bloodType;
  String name;
  int age;
  String gender;
  dynamic distance;
  int time;
  String priority;

  Request({
    this.id,
    this.bloodType,
    this.name,
    this.age,
    this.gender,
    this.distance,
    this.time,
    this.priority,
  });

  factory Request.fromJson(Map<String, dynamic> json) => Request(
        id: json["id"],
        bloodType: json["bloodType"],
        name: json["name"],
        age: json["age"],
        gender: json["gender"],
        distance: json["distance"],
        time: json["time"],
        priority: json["priority"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "bloodType": bloodType,
        "name": name,
        "age": age,
        "gender": gender,
        "distance": distance,
        "time": time,
        "priority": priority,
      };
}
