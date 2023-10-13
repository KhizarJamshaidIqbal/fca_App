class UserProfile {
  final String name;
  final String email;
  final String role;
  final int age;
  final String gender;
  final String address;
  final String? password;
  final String? passwordConfirmation;

  UserProfile({
    required this.name,
    required this.email,
    required this.role,
    required this.age,
    required this.gender,
    required this.address,
    this.password,
    this.passwordConfirmation,
  });

  // Factory constructor to create an instance from a map (usually used with JSON)
  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      name: json['name'],
      email: json['email'],
      role: json['role'],
      age: json['age'],
      gender: json['gender'],
      address: json['address'],
    );
  }

  // Method to convert the object to a map (usually used for JSON serialization)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'role': role,
      'age': age,
      'gender': gender,
      'address': address,
      'password': password,
      'password_confirmation': passwordConfirmation
    };
  }
}
