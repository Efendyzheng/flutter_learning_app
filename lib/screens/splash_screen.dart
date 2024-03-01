import 'package:challenge_learning_app/components/shared_widgets.dart';
import 'package:challenge_learning_app/components/utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(26, 30, 26, 56),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 34, right: 67),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          image: const DecorationImage(
                            image: AssetImage(
                                'assets/images/teacher/teacher_00.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        width: 230,
                        height: 280,
                      ),
                      Positioned(
                        top: 37,
                        child: Container(
                          width: 115,
                          height: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: secondaryBackgroundColor,
                          ),
                          child: const Center(
                            child: Text(
                              '👩‍💻 👜 👌',
                              style: TextStyle(fontSize: 21),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 37,
                        right: 0,
                        child: Container(
                          width: 109,
                          height: 56,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: secondaryBackgroundColor,
                          ),
                          child: Text(
                            'Great Teachers',
                            style: whiteTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 63,
                ),
                Text(
                  'Learn.',
                  style: whiteTextStyle.copyWith(
                    height: 0.9,
                    fontSize: 66,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'Practice.',
                  style: purpleTextStyle.copyWith(
                    height: 0.9,
                    fontSize: 66,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  'Earn.',
                  style: whiteTextStyle.copyWith(
                    height: 0.9,
                    fontSize: 66,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'New way to study abroad from the real professional with great work.',
                  style: grayTextStyle.copyWith(
                    fontSize: 16,
                    height: 2,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                  text: 'Create New Account',
                  color: purpleColor,
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  fontSize: 16,
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    },
                    child: Text(
                      'Sign In to My Account',
                      style: grayTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
