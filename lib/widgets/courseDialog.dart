import 'package:arb/Backend.dart';
import 'package:flutter/material.dart';

class CourseDialog extends StatelessWidget {

  CourseModel Course = CourseModel();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      contentPadding: EdgeInsets.all(0),
      content: Container(
        height: MediaQuery.of(context).size.height * 0.55,
        width: MediaQuery.of(context).size.width * 0.8,
        child: // Generated code for this Column Widget...
            Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    Course!.CourseName!,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontFamily: 'Poppins',
                          color: Color(0xFFB38E44),
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                    child: Container(
                      width: double.infinity,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Color(0xFF7D6F6F),
                      ),
                    ),
                  ),
                  dialogcontentRow(context, Course!.CourseID!.toString() , 'رمز المقرر'),
                  dialogcontentRow(context, Course!.Activity! , 'النشاط'),
                  dialogcontentRow(context, Course!.Section!.toString() , 'الشعبة'),
                  dialogcontentRow(context, Course!.Hours!.toString() , 'الساعات'),
                  dialogcontentRow(context, Course!.Room!, 'القاعة'),
                  dialogcontentRow(context, Course!.Campus! , 'المقر'),
                  SizedBox(height: 20),
                  Text(
                    Course!.TecherName!,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontFamily: 'Poppins',
                          color: Color(0xFFB38E44),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ),
          ),
        );
      }

  Padding dialogcontentRow(BuildContext context, String title, String info) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20, 15, 20, 15),
      child: Row(
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontFamily: 'Poppins',
                  color: Color(0xFF004146),
                ),
          ),
          SizedBox(width: 15),
          Text(
            info,
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                  fontFamily: 'Poppins',
                  color: Color(0xFF004146),
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
          ),
        ],
      ),
    );
  }
}
