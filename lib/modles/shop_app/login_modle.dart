//import 'dart:convert';

//import 'package:flutter/material.dart';
// عمل كلاس عشان يستقبل الداتا الي من api

class ShoploginModel {
  bool status;
  String message;
  UserData data;
  ShoploginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    // عملنها هيك عشان هي بنستقبل list of map
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;
  }
}

class UserData {
  int id;
  String name;
  String email;
  String phone;
  String image;
  int points;
  int creadit;
  String token;

  // UserData({
  //   this.id,
  //   this.name,
  //   this.email,
  //   this.phone,
  //   this.image,
  //   this.points,
  //   this.token,
  // });

  ///named constractor
  // عملنا هيك عشان انو نخليه يروح على هاد الكونستركتور مش الي فوق لانو هاد الي فيه البيانات الحقيقية
  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    image = json['image'];
    points = json['points'];
    token = json['token'];
    creadit = json['creadit'];
  }
}
