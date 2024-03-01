import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';

class DetailSectionItem extends StatelessWidget {
  final int number;
  final String text;
  final bool isDone;

  const DetailSectionItem({
    super.key,
    required this.number,
    required this.text,
    this.isDone = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 14,
      ),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: secondaryBackgroundColor,
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: grayColor,
            ),
            child: Center(
              child: Text(
                number.toString(),
                style: whiteTextStyle,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const Spacer(),
          Icon(
            isDone ? Icons.check_circle_outline : Icons.lock_outline,
            color: isDone ? Colors.green : grayColor,
          ),
        ],
      ),
    );
  }
}
