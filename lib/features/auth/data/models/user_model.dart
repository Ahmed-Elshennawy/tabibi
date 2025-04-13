import 'package:tabibi/features/auth/domain/entities/user.dart';

class UserModel extends User {
  const UserModel({
    required super.name,
    required super.email,
    required super.phone,
    required super.role,
    super.profilePicture,
    required super.dateOfBirth,
    required super.gender,
    super.insuranceDetails,
    super.specialization,
    super.licenseNumber,
    super.experienceYears,
    required super.verified,
    super.description,
    required super.rate,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      role: json['role'],
      profilePicture: json['profile_picture'],
      dateOfBirth: json['date_of_birth'],
      gender: json['gender'],
      insuranceDetails: json['insurance_details'],
      specialization: json['specialization'],
      licenseNumber: json['license_number'],
      experienceYears: json['experience_years'],
      verified: json['verified'],
      description: json['description'],
      rate: (json['rate'] as num).toDouble(),
    );
  }
}
