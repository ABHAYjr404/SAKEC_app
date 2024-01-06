import 'package:flutter/material.dart';

class NoticeScreen extends StatefulWidget {
  const NoticeScreen({Key? key}) : super(key: key);

  @override
  _NoticeScreenState createState() => _NoticeScreenState();

}

class _NoticeScreenState extends State<NoticeScreen> {
  void main() => runApp(MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('SAKEC'),
          ),
          body: Container(
            child: const Text(
              "Notice board \n 1) First year Semester1 R2016 End Semester Exam Timetable "
              "\n 2) First Year Semester 2 End Semester Exam Timetable "
              "\n 3) First Year Semester 1 End Semester Exam Timetable "
              "\n 4) Semester VII - Viva Timetable "
              "\n 5) Guidline for Generic Preventive Measures/Covid-19(SOP) "
              "\n 6) The Institute has been ranked in the 251-300 band by NIRF 2020 "
              "\n 7) Semester IV - IA2 timetable "
              "\n 8) UG Programs in Computer Engineering & Information Technology have been awarded accrediation by National Board of Accreidation from 2019",
              style: TextStyle(fontSize: 20, height: 1.5),
            ),
            alignment: Alignment.center,
          ),
        ),
      ));

  @override
  Widget build(BuildContext context) {
    
    throw UnimplementedError();
  }
}
