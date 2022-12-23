
//User Class

class User {
  String get id => _id;
  String username;
  String photoUrl;
  late String  _id;
  bool active;
  DateTime lastseen;

  User({
    required this.username,
    required this.photoUrl,
    required this.active,
    required this.lastseen
  }) {
    
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
