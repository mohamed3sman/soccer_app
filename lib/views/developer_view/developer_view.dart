import 'package:flutter/material.dart';
import 'package:soccer_app/views/developer_view/widgets/developer_view_body.dart';

class DeveloperView extends StatelessWidget {
  const DeveloperView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Developer Page'),
      ),
      body: const DeveloperViewBody(),
    );
  }
}
