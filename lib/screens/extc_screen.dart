import 'package:flutter/material.dart';
import 'package:sakec_app/model/text_link.dart';

void main() => runApp(
  const MaterialApp(
    home: EXTCScreen(),
  ),
);

class EXTCScreen extends StatefulWidget {
  const EXTCScreen({Key? key}) : super(key: key);

  @override
  _EXTCScreenState createState() => _EXTCScreenState();
}

class _EXTCScreenState extends State<EXTCScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'E X T C',
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
                    'Dr. Vinutha T. P.',
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
                        "   PhD (Electrical Engineering, IITB), \n   M.Tech (Electronics)\n"
                        "   Teaching Experience: 18 Years\n"
                        "   Industry Experience: 8 Years\n",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 19,
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  child: const Text(
                    "'Delighted to welcome you to the department of Electronics & Telecommunication Engg, Shah and Anchor Kutchhi Engineering College, which was established in 2012.The department has qualified, enthusiastic young teaching faculty working with the objective of imparting quality education through the right balance of academics and co-curricular activities. Carefully structured teaching-learning methodology, well-equipped laboratories and various professional activities provide the platform for the overall development of the students. With the passing out of our 6th batch in 2021, we feel proud to have cultivated the essential qualities in students, namely, well-rounded character, a sound academic foundation, innovative thinking, global perspective and social commitment, achieving a combination of comprehensive and individual development.'\n\n\n",
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
                      HyperlinkText('IA-1 Time-Table For SE-EXTC',
                      'https://www.shahandanchor.com/etrx/wp-content/uploads/20220227_183012.jpg'),
                      HyperlinkText('\nIA-1Time-Table For SE,TE,BE-EXTC',
                      'https://www.shahandanchor.com/etrx/wp-content/uploads/ia2tt.pdf \n')
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