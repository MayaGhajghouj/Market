class UserModel {
  String id;
  String displayName;
  String email;
  String phone;
  String birthday;
  String? photoUrl;
  String? password;
  List<String> likedProducts;

  UserModel({
    required this.id,
    required this.displayName,
    required this.email,
    required this.phone,
    required this.birthday,
    this.photoUrl,
    this.password,
    this.likedProducts = const [],
  });

  // Convert a UserModel instance to a Map for Firestore
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'displayName': displayName,
      'email': email,
      'phone': phone,
      'birthday': birthday,
      'photoUrl': photoUrl,
      'password': password,
      'likedProducts': likedProducts,
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
      likedProducts: List<String>.from(map['likedProducts'] ?? []),
    );
  }
}
