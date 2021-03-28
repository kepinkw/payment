part of '../pages/config.dart';
// To parse this JSON data, do
//
//     final apiResponse = apiResponseFromJson(jsonString);

ApiResponse apiResponseFromJson(String str) => ApiResponse.fromJson(json.decode(str));

String apiResponseToJson(ApiResponse data) => json.encode(data.toJson());

class ApiResponse {
  ApiResponse({
    this.success,
    this.code,
    this.message,
    this.content,
  });

  bool success;
  int code;
  String message;
  dynamic content;

  factory ApiResponse.fromJson(Map<String, dynamic> json) => ApiResponse(
    success: json["success"],
    code: json["code"],
    message: json["message"],
    content: json["content"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "code": code,
    "message": message,
    "content": content,
  };
}
