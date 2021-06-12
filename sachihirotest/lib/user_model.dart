// To parse this JSON data, do
//
//     final usermodel = usermodelFromJson(jsonString);

import 'dart:convert';

Usermodel usermodelFromJson(String str) => Usermodel.fromJson(json.decode(str));

String usermodelToJson(Usermodel data) => json.encode(data.toJson());

class Usermodel {
  Usermodel({
    this.status,
    this.data,
  });

  Status status;
  Data data;

  factory Usermodel.fromJson(Map<String, dynamic> json) => Usermodel(
    status: Status.fromJson(json["status"]),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status.toJson(),
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.total,
    this.rows,
  });

  int total;
  List<Rowq> rows;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    total: json["total"],
    rows: List<Rowq>.from(json["rows"].map((x) => Rowq.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "rows": List<dynamic>.from(rows.map((x) => x.toJson())),
  };
}

class Rowq {
  Rowq({
    this.fullname,
    this.email,
    this.gender,
    this.dob,
    this.createdDate,
  });

  String fullname;
  String email;
  int gender;
  String dob;
  String createdDate;

  factory Rowq.fromJson(Map<String, dynamic> json) => Rowq(
    fullname: json["fullname"] == null ? null : json["fullname"],
    email: json["email"] == null ? null : json["email"],
    gender: json["gender"] == null ? null : json["gender"],
    dob: json["dob"] == null ? null : json["dob"],
    createdDate: json["created_date"],
  );

  Map<String, dynamic> toJson() => {
    "fullname": fullname == null ? null : fullname,
    "email": email == null ? null : email,
    "gender": gender == null ? null : gender,
    "dob": dob == null ? null : dob,
    "created_date": createdDate,
  };
}

class Status {
  Status({
    this.code,
    this.message,
  });

  int code;
  String message;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    code: json["code"],
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "message": message,
  };
}
