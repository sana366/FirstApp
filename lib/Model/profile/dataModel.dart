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



class ProfileApi {
  String? response;
  String? responseMessage;
  Data? data;
  int? loginStatus;
  String? status;

  ProfileApi(
      {this.response,
      this.responseMessage,
      this.data,
      this.loginStatus,
      this.status});

  ProfileApi.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    responseMessage = json['response_message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    loginStatus = json['login_status'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    data['response_message'] = this.responseMessage;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['login_status'] = this.loginStatus;
    data['status'] = this.status;
    return data;
  }
}

class Data {
  String? accId;
  String? acId;
  String? rollno;
  String? cnic;
  String? image;
  String? admId;
  String? sessId;
  String? baId;
  String? regno;
  String? title;
  String? fullname;
  String? fname;
  String? email;
  String? cellno;
  String? phoneno;
  String? gender;
  String? dob;
  String? religion;
  String? maritalStatus;
  String? domicile;
  String? district;
  String? city;
  String? permanentAddress;
  String? temporaryAddress;

  Data(
      {this.accId,
      this.acId,
      this.rollno,
      this.cnic,
      this.image,
      this.admId,
      this.sessId,
      this.baId,
      this.regno,
      this.title,
      this.fullname,
      this.fname,
      this.email,
      this.cellno,
      this.phoneno,
      this.gender,
      this.dob,
      this.religion,
      this.maritalStatus,
      this.domicile,
      this.district,
      this.city,
      this.permanentAddress,
      this.temporaryAddress});

  Data.fromJson(Map<String, dynamic> json) {
    accId = json['acc_id'];
    acId = json['ac_id'];
    rollno = json['rollno'];
    cnic = json['cnic'];
    image = json['image'];
    admId = json['adm_id'];
    sessId = json['sess_id'];
    baId = json['ba_id'];
    regno = json['regno'];
    title = json['title'];
    fullname = json['fullname'];
    fname = json['fname'];
    email = json['email'];
    cellno = json['cellno'];
    phoneno = json['phoneno'];
    gender = json['gender'];
    dob = json['dob'];
    religion = json['religion'];
    maritalStatus = json['marital_status'];
    domicile = json['domicile'];
    district = json['district'];
    city = json['city'];
    permanentAddress = json['permanent_address'];
    temporaryAddress = json['temporary_address'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['acc_id'] = this.accId;
    data['ac_id'] = this.acId;
    data['rollno'] = this.rollno;
    data['cnic'] = this.cnic;
    data['image'] = this.image;
    data['adm_id'] = this.admId;
    data['sess_id'] = this.sessId;
    data['ba_id'] = this.baId;
    data['regno'] = this.regno;
    data['title'] = this.title;
    data['fullname'] = this.fullname;
    data['fname'] = this.fname;
    data['email'] = this.email;
    data['cellno'] = this.cellno;
    data['phoneno'] = this.phoneno;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['religion'] = this.religion;
    data['marital_status'] = this.maritalStatus;
    data['domicile'] = this.domicile;
    data['district'] = this.district;
    data['city'] = this.city;
    data['permanent_address'] = this.permanentAddress;
    data['temporary_address'] = this.temporaryAddress;
    return data;
  }
}
