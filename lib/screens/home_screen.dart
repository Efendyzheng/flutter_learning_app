import 'package:challenge_learning_app/components/utils.dart';
import 'package:challenge_learning_app/screens/dashboard_screen.dart';
import 'package:challenge_learning_app/screens/group_screen.dart';
import 'package:challenge_learning_app/screens/library_screen.dart';
import 'package:challenge_learning_app/screens/setting_screen.dart';
import 'package:challenge_learning_app/widgets/home_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _controller;

  @override
  void initState() {
    _controller = TabController(length: 4, vsync: this);
    _controller?.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: _controller,
        children: const [
          DashboardScreen(),
          LibraryScreen(),
          GroupScreen(),
          SettingScreen(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          height: 80,
          margin: const EdgeInsets.only(bottom: 20),
          padding: const EdgeInsets.symmetric(
            horizontal: 28.5,
            vertical: 14,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: secondaryBackgroundColor,
          ),
          child: TabBar(
            controller: _controller,
            dividerColor: Colors.transparent,
            labelColor: whiteColor,
            indicatorColor: Colors.transparent,
            labelStyle: whiteTextStyle.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            tabs: [
              HomeTab(
                text: 'Progress',
                iconData: Icons.dashboard_outlined,
                isSelected: _controller?.index == 0,
              ),
              HomeTab(
                text: 'Library',
                iconData: Icons.library_books,
                isSelected: _controller?.index == 1,
              ),
              HomeTab(
                text: 'Groups',
                iconData: Icons.message_outlined,
                isSelected: _controller?.index == 2,
                hasNotification: true,
              ),
              HomeTab(
                text: 'Settings',
                iconData: Icons.settings_outlined,
                isSelected: _controller?.index == 3,
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
