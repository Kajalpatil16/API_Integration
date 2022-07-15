// To parse this JSON data, do
//
//     final dataOfApi = dataOfApiFromJson(jsonString);

import 'dart:convert';

List<DataOfApi> dataOfApiFromJson(String str) => List<DataOfApi>.from(json.decode(str).map((x) => DataOfApi.fromJson(x)));

String dataOfApiToJson(List<DataOfApi> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataOfApi {
  DataOfApi({
    this.year,
    this.rank,
    this.personName,
    this.source,
    this.lastName,

  });

  int? year;
  int? rank;
  String? personName;
  String? source;
  String? lastName;

  factory DataOfApi.fromJson(Map<String, dynamic> json) => DataOfApi(
    year: json["year"],
    rank: json["rank"],
    personName: json["personName"],
    source: json["source"],
    lastName: json["lastName"],
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "rank": rank,
    "personName": personName,
    "source": source,
    "lastName": lastName,
  };
}


