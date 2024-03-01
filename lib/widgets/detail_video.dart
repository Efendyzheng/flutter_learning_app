import 'package:challenge_learning_app/widgets/detail_video_item.dart';
import 'package:flutter/material.dart';

class DetailVideo extends StatelessWidget {
  const DetailVideo({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          DetailVideoItem(),
          DetailVideoItem(),
          DetailVideoItem(),
          DetailVideoItem(),
          DetailVideoItem(),
        ],
      ),
    );
  }
}
