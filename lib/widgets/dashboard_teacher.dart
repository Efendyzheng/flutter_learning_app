import 'package:challenge_learning_app/components/utils.dart';
import 'package:challenge_learning_app/services/database_service.dart';
import 'package:challenge_learning_app/widgets/dashboard_teacher_item.dart';
import 'package:flutter/material.dart';

class DashboardTeacher extends StatelessWidget {
  const DashboardTeacher({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 140),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular Teachers',
            style: whiteTextStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          StreamBuilder(
            stream: DatabaseService().teachers,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(
                    color: purpleColor,
                  ),
                );
              }

              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                    style: whiteTextStyle,
                  ),
                );
              }
              if (snapshot.data != null) {
                final teacherList = snapshot.data;

                return SizedBox(
                  height: 174,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: teacherList!.length,
                    itemBuilder: (context, index) {
                      print(teacherList[index].imagePath);
                      return DashboardTeacherItem(
                        name: teacherList[index].name,
                        jobDescription: teacherList[index].jobDescription,
                        imagePath: teacherList[index].imagePath,
                      );
                    },
                  ),
                );
              } else {
                return Center(
                  child: Text(
                    'Belum Ada Data',
                    style: whiteTextStyle.copyWith(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              }
            },
          ),
          // const SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       DashboardTeacherItem(
          //         name: 'Bejo Urang',
          //         jobDescription: 'Manager',
          //         imagePath: 'assets/images/teacher/teacher_00.jpg',
          //       ),
          //       DashboardTeacherItem(
          //         name: 'Bejo Urang',
          //         jobDescription: 'Manager',
          //         imagePath: 'assets/images/teacher/teacher_00.jpg',
          //       ),
          //       DashboardTeacherItem(
          //         name: 'Bejo Urang',
          //         jobDescription: 'Manager',
          //         imagePath: 'assets/images/teacher/teacher_00.jpg',
          //       ),
          //       DashboardTeacherItem(
          //         name: 'Bejo Urang',
          //         jobDescription: 'Manager',
          //         imagePath: 'assets/images/teacher/teacher_00.jpg',
          //       ),
          //       DashboardTeacherItem(
          //         name: 'Bejo Urang',
          //         jobDescription: 'Manager',
          //         imagePath: 'assets/images/teacher/teacher_00.jpg',
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
