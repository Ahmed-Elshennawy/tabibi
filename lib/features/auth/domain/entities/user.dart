class User {
  final String name;
  final String email;
  final String phone;
  final String role;
  final String? profilePicture;
  final String dateOfBirth;
  final String gender;
  final String? insuranceDetails;
  final String? specialization;
  final String? licenseNumber;
  final int? experienceYears;
  final bool verified;
  final String? description;
  final double rate;

  const User({
    required this.name,
    required this.email,
    required this.phone,
    required this.role,
    this.profilePicture,
    required this.dateOfBirth,
    required this.gender,
    this.insuranceDetails,
    this.specialization,
    this.licenseNumber,
    this.experienceYears,
    required this.verified,
    this.description,
    required this.rate,
  });
}
