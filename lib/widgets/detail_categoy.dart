import 'package:challenge_learning_app/components/shared_widgets.dart';
import 'package:flutter/material.dart';

class DetailCategory extends StatelessWidget {
  const DetailCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CustomSmallButton(
            text: 'Lessons',
            showIcon: false,
            height: 41,
            isSelected: true,
          ),
          CustomSmallButton(
            text: 'About',
            showIcon: false,
            height: 41,
          ),
          CustomSmallButton(
            text: 'Discussions',
            showIcon: false,
            height: 41,
          ),
          CustomSmallButton(
            text: 'Question',
            showIcon: false,
            height: 41,
          ),
        ],
      ),
    );
  }
}
