import 'package:challenge_learning_app/components/shared_methods.dart';
import 'package:challenge_learning_app/components/shared_widgets.dart';
import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';

class DetailScore extends StatelessWidget {
  final double rating;
  final int review;
  const DetailScore({
    super.key,
    required this.rating,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomRatingBar(rating: rating),
        const SizedBox(
          width: 16,
        ),
        Text(
          "${rating.toInt()}/5 - (${formatCurrency(review, symbol: '')})",
          style: whiteTextStyle.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
