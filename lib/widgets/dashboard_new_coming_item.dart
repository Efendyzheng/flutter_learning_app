import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';

class DashboardNewComingItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String category;
  final String score;
  const DashboardNewComingItem({
    super.key,
    required this.title,
    required this.category,
    required this.score,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 230,
      height: 269,
      margin: const EdgeInsets.only(right: 18),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: secondaryBackgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: 160,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 148,
                  height: 48,
                  child: Text(
                    title,
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 20,
                ),
                Text(
                  "${score}/5",
                  style: whiteTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              category,
              style: grayTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
