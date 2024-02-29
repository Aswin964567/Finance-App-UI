import 'package:finance/widgets/course_box.dart';
import 'package:flutter/material.dart';

class Academy extends StatelessWidget {
  const Academy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Academy",
            style: TextStyle(
              color: Colors.white60,
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.only(left: 16),
            // ignore: unnecessary_const
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Courses",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white60),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CourseBox(
            course: 'Course 1',
          ),
          CourseBox(
            course: 'Course 2',
          ),
          CourseBox(
            course: 'Course 3',
          ),
          CourseBox(
            course: 'Course 4',
          )
        ],
      ),
    ));
  }
}
