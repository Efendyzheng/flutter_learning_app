import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';

class DashboardTeacherItem extends StatelessWidget {
  final String imagePath;
  final String name;
  final String jobDescription;

  const DashboardTeacherItem({
    super.key,
    required this.name,
    required this.jobDescription,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 174,
      margin: const EdgeInsets.only(right: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: secondaryBackgroundColor,
      ),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            name,
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            jobDescription,
            style: grayTextStyle,
          ),
        ],
      ),
    );
  }
}
