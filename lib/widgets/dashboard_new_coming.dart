import 'package:challenge_learning_app/components/utils.dart';
import 'package:challenge_learning_app/widgets/dashboard_new_coming_item.dart';
import 'package:flutter/material.dart';

class DashboardNewComing extends StatelessWidget {
  const DashboardNewComing({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New Coming',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DashboardNewComingItem(
                  title: 'Full-Stack Mobile AppDeveloper',
                  category: 'Coding',
                  score: '4',
                  imagePath: 'assets/images/class/class_00.jpg',
                ),
                DashboardNewComingItem(
                  title: 'Analyze UX food & Digital Marketing',
                  category: 'Data Science',
                  score: '5',
                  imagePath: 'assets/images/class/class_02.jpg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
