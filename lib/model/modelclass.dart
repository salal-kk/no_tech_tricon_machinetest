import 'dart:convert';

Apidata apidataFromJson(String str) => Apidata.fromJson(json.decode(str));

class Apidata {
  Apidata({
    this.data,
  });

  List<Datum>? data;

  factory Apidata.fromJson(Map<String, dynamic> json) => Apidata(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

class Datum {
  Datum({
    this.id,
    this.name,
    this.location,
    this.price,
    this.image,
  });

  String? id;
  String? name;
  String? location;
  String? price;
  String? image;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        location: json["location"],
        price: json["price"],
        image: json["image"],
      );
}
