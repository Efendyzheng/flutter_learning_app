import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  final String text;
  final IconData iconData;
  final bool isSelected;
  final bool hasNotification;

  const HomeTab({
    super.key,
    required this.text,
    required this.iconData,
    this.isSelected = false,
    this.hasNotification = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Tab(
          icon: Icon(
            iconData,
            color: isSelected ? whiteColor : grayColor,
            size: 24,
          ),
          text: text,
        ),
        hasNotification
            ? Positioned(
                right: 4,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.redAccent,
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
