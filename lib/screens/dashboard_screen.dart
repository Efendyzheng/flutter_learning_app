import 'package:challenge_learning_app/widgets/dashboard_continue.dart';
import 'package:challenge_learning_app/widgets/dashboard_new_coming.dart';
import 'package:challenge_learning_app/widgets/dashboard_search.dart';
import 'package:challenge_learning_app/widgets/dashboard_teacher.dart';
import 'package:challenge_learning_app/widgets/dashboard_topic.dart';
import 'package:challenge_learning_app/widgets/dashboard_user.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardUser(),
            SizedBox(
              height: 30,
            ),
            DashboardSearch(),
            SizedBox(
              height: 30,
            ),
            DashboardContinue(),
            SizedBox(
              height: 30,
            ),
            DashboardTopic(),
            SizedBox(
              height: 30,
            ),
            DashboardNewComing(),
            SizedBox(
              height: 30,
            ),
            DashboardTeacher(),
          ],
        ),
      ),
    );
  }
}
