// To parse this JSON data, do
//
//     final profileImageUpdateResponse = profileImageUpdateResponseFromJson(jsonString);

import 'dart:convert';

import 'package:active_ecommerce_flutter/app_config.dart';

ProfileImageUpdateResponse profileImageUpdateResponseFromJson(String str) => ProfileImageUpdateResponse.fromJson(json.decode(str));

String profileImageUpdateResponseToJson(ProfileImageUpdateResponse data) => json.encode(data.toJson());

class ProfileImageUpdateResponse {
  ProfileImageUpdateResponse({
    this.result,
    this.message,
    this.path
  });

  bool result;
  String message;
  String path;

  factory ProfileImageUpdateResponse.fromJson(Map<String, dynamic> json) => ProfileImageUpdateResponse(
    result: json["result"],
    message: json["message"],
    path: AppConfig.RAW_BASE_URL + '/public/' + json["path"],
  );

  Map<String, dynamic> toJson() => {
    "result": result,
    "message": message,
    "path": path,
  };
}