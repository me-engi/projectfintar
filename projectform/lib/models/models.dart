// To parse this JSON data, do
//
//     final commentget = commentgetFromJson(jsonString);

import 'dart:convert';

List<Commentget> commentgetFromJson(String str) => List<Commentget>.from(json.decode(str).map((x) => Commentget.fromJson(x)));

String commentgetToJson(List<Commentget> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Commentget {
    String? name;
    String? middleName;
    String? lastName;
    String? year;
    int? Month;
    

    Commentget({
        required this.name,
        
        required this.middleName,
        required this.lastName,
        required this.year,
        required this.Month,
       
    });

    factory Commentget.fromJson(Map<String, dynamic> json) => Commentget(
        name: json["id"],
        middleName: json["user"],
        lastName: json["user_id"],
        year: json["tour_id"],
        Month: json["tour_name"],
        
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "mddleName": middleName,
        "lastName": lastName,
        "years": Month,
        
    };
}