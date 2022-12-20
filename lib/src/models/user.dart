import 'package:flutter/foundation.dart';

//User Class

class User {
  String get id => _id;
  String?username;
  String? photoUrl;
  late String  _id;
  bool? active;
  DateTime ?lastseen;

  User({
    required String username,
    required String photoUrl,
    required bool active,
    required DateTime lastseen
  }) {
    // TODO: implement User
    throw UnimplementedError();
  }

  toJson() => {
        'username': username,
        'photo_url': photoUrl,
        'active': active,
        'last_seen': lastseen,
      };
  factory User.fromJson(Map<String, dynamic> json) {
    final user = User(
        username: json['username'],
        photoUrl: json['photoUrl'],
        active: json['active'],
        lastseen: json['lastseen']);
    user._id = json['id'];
    return user;
  }
}
