import 'package:challenge_learning_app/components/shared_widgets.dart';
import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';

class DashboardContinueItem extends StatelessWidget {
  const DashboardContinueItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail');
      },
      child: Container(
        width: 345,
        height: 164,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: secondaryBackgroundColor,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 189,
                  height: 87,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mastering Figma Auto Layout',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        'UI/UX Design',
                        style: grayTextStyle,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/class/class_00.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                const CustomProgressBar(
                  width: 263,
                  dataProgress: 11,
                  dataEnd: 69,
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  "11/69",
                  style: whiteTextStyle.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
