import 'package:challenge_learning_app/components/shared_widgets.dart';
import 'package:challenge_learning_app/components/utils.dart';
import 'package:challenge_learning_app/widgets/detail_categoy.dart';
import 'package:challenge_learning_app/widgets/detail_score.dart';
import 'package:challenge_learning_app/widgets/detail_section_item.dart';
import 'package:challenge_learning_app/widgets/detail_video.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBackgroundColor,
        leadingWidth: 55,
        leading: Container(
          width: 55,
          height: 55,
          margin: const EdgeInsets.only(left: 10, top: 10),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: secondaryBackgroundColor,
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_rounded,
              color: whiteColor,
            ),
            color: secondaryBackgroundColor,
          ),
        ),
        title: Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(
            'Course Details',
            style: whiteTextStyle.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          Container(
            width: 55,
            height: 55,
            margin: const EdgeInsets.only(left: 10, top: 10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: secondaryBackgroundColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: whiteColor,
                size: 24,
              ),
              color: secondaryBackgroundColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DetailVideo(),
              const SizedBox(
                height: 18,
              ),
              SizedBox(
                width: 345,
                child: Text(
                  'Design Thinking: Improve Startups Better 100x',
                  style: whiteTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const DetailScore(rating: 4.5, review: 11390),
              const SizedBox(
                height: 20,
              ),
              const DetailCategory(),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Section 1 - Warming Up',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const DetailSectionItem(
                number: 1,
                text: 'Installation Tools',
                isDone: true,
              ),
              const DetailSectionItem(
                number: 2,
                text: 'Introduction',
                isDone: true,
              ),
              const DetailSectionItem(
                number: 3,
                text: 'Download Assets',
                isDone: true,
              ),
              const DetailSectionItem(number: 4, text: 'Install Plugins'),
              const DetailSectionItem(number: 5, text: 'Summary'),
              const SizedBox(
                height: 4,
              ),
              Text(
                'Section 1 - Warming Up',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const DetailSectionItem(number: 1, text: 'New Project'),
              const DetailSectionItem(number: 2, text: 'Wireframe to Visual'),
              const DetailSectionItem(number: 3, text: 'Prototyping'),
            ],
          ),
        ),
      ),
    );
  }
}
