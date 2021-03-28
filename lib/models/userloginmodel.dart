part of '../pages/config.dart';

UserLoginModel userLoginModelFromJson(String str) => UserLoginModel.fromJson(json.decode(str));

String userLoginModelToJson(UserLoginModel data) => json.encode(data.toJson());

class UserLoginModel {
  UserLoginModel({
    this.uid,
    this.email,
    this.password,
    this.nama,
    this.status,
    this.nohp
  });

  String uid;
  String email;
  String password;
  String nama;
  String status;
  String nohp;

  factory UserLoginModel.fromJson(Map<String, dynamic> json) => UserLoginModel(
    uid: json["uid"],
    email: json["email"],
    password: json["password"],
    nama: json["nama"],
    status: json["status"],
    nohp: json["nohp"]
  );

  Map<String, dynamic> toJson() => {
    "uid": uid,
    "email": email,
    "password": password,
    "nama": nama,
    "status": status,
    "nohp": nohp
  };
}