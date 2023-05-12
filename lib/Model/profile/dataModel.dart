// import 'package:flutter/foundation.dart';

// class DataModel{
//    String accId;
//   String acId;
//   String rollno;
//   String cnic;
//   String image;
//   String admId;
//   String sessId;
//   String baId;
//   String regno;
//   String title;
//   String fullname;
//   String fname;
//   String email;
//   String cellno;
//   String phoneno;
//   String gender;
//   String dob;
//   String religion;
//   String maritalStatus;
//   String domicile;
//   String district;
//   String city;
//   String permanentAddress;
//   String temporaryAddress;


// DataModel({
//     required this.accId,
//     required this.acId,
//     required this.rollno,
//     required this.cnic,
//     required this.image,
//     required this.admId,
//     required this.sessId,
//     required this.baId,
//     required this.regno,
//     required this.title,
//     required this.fullname,
//     required this.fname,
//     required this.email,
//     required this.cellno,
//     required this.phoneno,
//     required this.gender,
//     required this.dob,
//     required this.religion,
//     required this.maritalStatus,
//     required this.domicile,
//     required this.district,
//     required this.city,
//     required this.permanentAddress,
//     required this.temporaryAddress,
// });

// factory DataModel.fromJson(Map<String, dynamic> json){
//   return DataModel(
//       accId: json["acc_id"],
//         acId: json["ac_id"],
//         rollno: json["rollno"],
//         cnic: json["cnic"],
//         image: json["image"],
//         admId: json["adm_id"],
//         sessId: json["sess_id"],
//         baId: json["ba_id"],
//         regno: json["regno"],
//         title: json["title"],
//         fullname: json["fullname"],
//         fname: json["fname"],
//         email: json["email"],
//         cellno: json["cellno"],
//         phoneno: json["phoneno"],
//         gender: json["gender"],
//         dob: json["dob"],
//         religion: json["religion"],
//         maritalStatus: json["marital_status"],
//         domicile: json["domicile"],
//         district: json["district"],
//         city: json["city"],
//         permanentAddress: json["permanent_address"],
//         temporaryAddress: json["temporary_address"]);

// }
// }



import 'dart:convert';

ProfileApi profileApiFromJson(String str) =>
    ProfileApi.fromJson(json.decode(str));

String profileApiToJson(ProfileApi data) => json.encode(data.toJson());

class ProfileApi {
  String response;
  String responseMessage;
  Data data;
  int loginStatus;
  String status;

  ProfileApi({
    required this.response,
    required this.responseMessage,
    required this.data,
    required this.loginStatus,
    required this.status,
  });

  factory ProfileApi.fromJson(Map<String, dynamic> json) {
   return ProfileApi(
      response: json["response"],
      responseMessage: json["response_message"],
      data: Data.fromJson(json["data"]),
      loginStatus: json["login_status"],
      status: json["status"],
    );
  }

  Map<String, dynamic> toJson() => {
        "response": response,
        "response_message": responseMessage,
        "data": data.toJson(),
        "login_status": loginStatus,
        "status": status,
      };
}

class Data {
  String accId;
  String acId;
  String rollno;
  String cnic;
  String image;
  String admId;
  String sessId;
  String baId;
  String regno;
  String title;
  String fullname;
  String fname;
  String email;
  String cellno;
  String phoneno;
  String gender;
  String dob;
  String religion;
  String maritalStatus;
  String domicile;
  String district;
  String city;
  String permanentAddress;
  String temporaryAddress;

  Data({
    required this.accId,
    required this.acId,
    required this.rollno,
    required this.cnic,
    required this.image,
    required this.admId,
    required this.sessId,
    required this.baId,
    required this.regno,
    required this.title,
    required this.fullname,
    required this.fname,
    required this.email,
    required this.cellno,
    required this.phoneno,
    required this.gender,
    required this.dob,
    required this.religion,
    required this.maritalStatus,
    required this.domicile,
    required this.district,
    required this.city,
    required this.permanentAddress,
    required this.temporaryAddress,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        accId: json["acc_id"],
        acId: json["ac_id"],
        rollno: json["rollno"],
        cnic: json["cnic"],
        image: json["image"],
        admId: json["adm_id"],
        sessId: json["sess_id"],
        baId: json["ba_id"],
        regno: json["regno"],
        title: json["title"],
        fullname: json["fullname"],
        fname: json["fname"],
        email: json["email"],
        cellno: json["cellno"],
        phoneno: json["phoneno"],
        gender: json["gender"],
        dob: json["dob"],
        religion: json["religion"],
        maritalStatus: json["marital_status"],
        domicile: json["domicile"],
        district: json["district"],
        city: json["city"],
        permanentAddress: json["permanent_address"],
        temporaryAddress: json["temporary_address"],
      );

  Map<String, dynamic> toJson() => {
        "acc_id": accId,
        "ac_id": acId,
        "rollno": rollno,
        "cnic": cnic,
        "image": image,
        "adm_id": admId,
        "sess_id": sessId,
        "ba_id": baId,
        "regno": regno,
        "title": title,
        "fullname": fullname,
        "fname": fname,
        "email": email,
        "cellno": cellno,
        "phoneno": phoneno,
        "gender": gender,
        "dob": dob,
        "religion": religion,
        "marital_status": maritalStatus,
        "domicile": domicile,
        "district": district,
        "city": city,
        "permanent_address": permanentAddress,
        "temporary_address": temporaryAddress,
      };
}
