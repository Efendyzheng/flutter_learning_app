import 'package:challenge_learning_app/components/shared_widgets.dart';
import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';

class DashboardTopic extends StatelessWidget {
  const DashboardTopic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Browse Topics',
            style: whiteTextStyle.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CustomSmallButton(
                  icon: Icons.design_services,
                  text: 'Design',
                  height: 52,
                  isSelected: true,
                ),
                CustomSmallButton(
                  icon: Icons.sports,
                  text: 'Sport',
                  height: 52,
                ),
                CustomSmallButton(
                  icon: Icons.code,
                  text: 'Coding',
                  height: 52,
                ),
                CustomSmallButton(
                  icon: Icons.music_note,
                  text: 'Music',
                  height: 52,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
