import 'package:flutter/material.dart';

import 'widgets/result_view_body.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff84DCC4),
      body: ResultViewBody(),
    );
  }
}
