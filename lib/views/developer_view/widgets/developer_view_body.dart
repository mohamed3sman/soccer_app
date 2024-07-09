import 'package:flutter/material.dart';
import 'package:soccer_app/views/developer_view/widgets/custom_developer_profile.dart';

class DeveloperViewBody extends StatelessWidget {
  const DeveloperViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> developerList = [
      {
        'name': 'Phin Dara',
        'role': 'CEO & Founder & Developer',
        'email': 'iamraabot@gmail.com',
        'image': 'assets/images/raabot.jpg',
      },
      {
        'name': 'Vuthy Outhdom',
        'role': 'CTO',
        'email': 'vuthyouthdom@gmail.com',
        'image': 'assets/images/domz.png',
      },
      {
        'name': 'Measheanh Sengheng',
        'role': 'Mobile Developer',
        'email': 'senghengmeasheanh@gmail.com',
        'image': 'assets/images/sengheng.jpeg',
      },
      {
        'name': 'Savuth Yuvaneath',
        'role': 'Mobile Developer',
        'email': 'vaneathzz@gmail.com',
        'image': 'assets/images/vn.jpeg',
      },
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // * Title
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Meet the Developer',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // * Divider
            Divider(
              color: Colors.green.shade300,
              thickness: 10,
              indent: 90,
              endIndent: 100,
            ),
            const SizedBox(height: 20),
            // * Developer Profile
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: developerList.length,
              separatorBuilder: (context, index) => const SizedBox(height: 20),
              itemBuilder: (context, index) {
                return CustomDeveloperProfile(
                  imagePath: developerList[index]['image'],
                  developerName: developerList[index]['name'],
                  developerRole: developerList[index]['role'],
                  developerEmail: developerList[index]['email'],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
