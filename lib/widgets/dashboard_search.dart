import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DashboardSearch extends StatelessWidget {
  const DashboardSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextFormField(
        cursorColor: whiteColor,
        style: whiteTextStyle,
        decoration: InputDecoration(
          prefixIcon: Container(
            margin: const EdgeInsets.only(left: 25),
            child: FaIcon(
              FontAwesomeIcons.search,
              size: 24,
              color: whiteColor,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(minWidth: 60),
          hintText: 'Search by skills or teacher',
          fillColor: secondaryBackgroundColor,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: secondaryBackgroundColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: secondaryBackgroundColor,
            ),
          ),
          hintStyle: grayTextStyle,
        ),
        textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
