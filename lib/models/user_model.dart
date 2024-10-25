class UserModel {
  String id;
  String displayName;
  String email;
  String phone;
  String birthday;
  String? photoUrl;
  String? password;

  UserModel({
    required this.id,
    required this.displayName,
    required this.email,
    required this.phone,
    required this.birthday,
    this.photoUrl,
     this.password,
  });

  // Convert a UserModel instance to a Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'displayName': displayName,
      'email': email,
      'phone': phone,
      'birthday': birthday,
      'photoUrl': photoUrl,
      'password': password,
    };
  }

  // Convert a Map to a UserModel instance
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      displayName: map['displayName'],
      email: map['email'],
      phone: map['phone'],
      birthday: map['birthday'],
      photoUrl: map['photoUrl'],
      password: map['password'],
    );
  }
}
