import 'package:flutter/material.dart';

class CustomDeveloperProfile extends StatelessWidget {
  final String imagePath;
  final String developerName;
  final String developerRole;
  final String developerEmail;
  const CustomDeveloperProfile({
    super.key,
    required this.imagePath,
    required this.developerName,
    required this.developerRole,
    required this.developerEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage(imagePath),
        ),
        const SizedBox(height: 10),
        Text(
          developerName,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          developerRole,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          developerEmail,
          style: const TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
