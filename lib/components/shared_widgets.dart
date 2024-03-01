import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap;
  final double fontSize;

  const CustomButton({
    super.key,
    required this.text,
    required this.color,
    required this.onTap,
    this.fontSize = 14,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: whiteTextStyle.copyWith(
              fontSize: fontSize,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomSmallButton extends StatelessWidget {
  final double height;

  final bool isSelected;
  final IconData? icon;
  final String text;
  final bool showIcon;

  const CustomSmallButton({
    super.key,
    required this.height,
    required this.text,
    this.icon,
    this.isSelected = false,
    this.showIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: isSelected ? purpleColor : secondaryBackgroundColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          if (showIcon)
            Icon(
              icon,
              color: whiteColor,
            ),
          if (showIcon)
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
        ],
      ),
    );
  }
}

class CustomProgressBar extends StatefulWidget {
  final double height;
  final double width;

  final int dataProgress;
  final int dataEnd;

  const CustomProgressBar({
    super.key,
    required this.width,
    required this.dataProgress,
    required this.dataEnd,
    this.height = 12,
  });

  @override
  State<CustomProgressBar> createState() => _CustomProgressBarState();
}

class _CustomProgressBarState extends State<CustomProgressBar> {
  late double _widthProgress = 0.0;

  @override
  void initState() {
    setState(() {
      _widthProgress = (widget.dataProgress / widget.dataEnd);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: grayColor,
      ),
      child: FractionallySizedBox(
        widthFactor: _widthProgress,
        alignment: Alignment.centerLeft,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: purpleColor,
          ),
        ),
      ),
    );
  }
}

class CustomRatingBar extends StatelessWidget {
  final double rating;
  const CustomRatingBar({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 1; i <= 5; i++)
          if (rating >= i)
            Container(
              margin: const EdgeInsets.only(right: 3),
              child: const Icon(
                Icons.star,
                color: Colors.yellow,
              ),
            )
          else if (rating < i && rating > (i - 1))
            Container(
              margin: const EdgeInsets.only(right: 3),
              child: const Icon(
                Icons.star_half,
                color: Colors.yellow,
              ),
            )
          else
            Container(
              margin: const EdgeInsets.only(right: 3),
              child: Icon(
                Icons.star,
                color: grayColor,
              ),
            ),
      ],
    );
  }
}
