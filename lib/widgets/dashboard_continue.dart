import 'package:challenge_learning_app/components/utils.dart';
import 'package:challenge_learning_app/widgets/dashboard_continue_item.dart';
import 'package:flutter/material.dart';

class DashboardContinue extends StatelessWidget {
  const DashboardContinue({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Coninue Learning',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          DashboardContinueItem(),
        ],
      ),
    );
  }
}
