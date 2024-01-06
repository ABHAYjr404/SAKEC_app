import 'package:flutter/material.dart';
import 'package:sakec_app/model/text_link.dart';

void main() => runApp(
  const MaterialApp(
    home: COMPSScreen(),
  ),
);

class COMPSScreen extends StatefulWidget {
  const COMPSScreen({Key? key}) : super(key: key);

  @override
  _COMPSScreenState createState() => _COMPSScreenState();
}

class _COMPSScreenState extends State<COMPSScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'COMPS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              
              Container(
                child: const Text(
                  'Prof. Uday K. Bhave',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 28,
                  ),
                ),
                color: Colors.cyan,
                padding: const EdgeInsets.all(20),
                alignment: Alignment.center,
              ),
              Container(
                child: const Text(
                  "\n   I/C Head of the Department \n"
                      "   M.E.(Computer) & B.E.(Electronics)\n"
                      "   Teaching Experience: 24 Years\n"
                      "   Industrial Experience: 6.5 Years\n",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              Container(
                child: const Text(
                  "'Department of Computer Engineering of Shah and Anchor Kutchhi Engineering College is one of the oldest and vibrant department, established in the year 1996 with initial intake of 40. Over the years, the department has progressed continuously and currently offering 180 seats for UG and 9 seats for PG programs. Our goal is to empower our students in the field of Computer Science and Engineering through its highly motivated, qualified and experienced faculties and sophisticated laboratories.\n\nStudents are given proper exposure to technical skills as well as soft-skills to face the challenges in the industry through technical workshops organised by professional bodies, guest lectures, seminars by industry experts, departmental collaboration etc. Apart from this, department encourages students to participate in different coding competitions, national and international hackathons, spoken tutorials, in-house product development with faculty members, and certification courses like NPTEL, STAR and Red Hat etc.\n\nStudents are also given ample opportunities of internships and research activities like technical report writing, publishing research papers and filing copyrights and patents throughout their bachelor program.'\n\n\n",
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),

              Container(
                child: const Text(
                  'Notice',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    fontSize: 28,
                  ),
                ),
                color: Colors.cyan,
                alignment: Alignment.center,
              ),

              Container(
                child: Column (
                  children: [
                    HyperlinkText('Sem 3 Exam Form Notice',
                    'https://www.shahandanchor.com/home/wp-content/uploads/sem-3-r-2019.pdf'),
                    HyperlinkText('\nViva/Practical Time-Table For SE-COMPS',
                    'https://www.shahandanchor.com/ce/viva-time-table-for-s-e-fh2022/ '),
                    HyperlinkText('\nViva/Practical Time-Table For BE-COMPS',
                    'https://www.shahandanchor.com/ce/viva-time-table-for-b-e-fh2022/ \n')
                  ],
                ),
                padding:const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
              ),
            ]
          ),
        ));
  }
}

