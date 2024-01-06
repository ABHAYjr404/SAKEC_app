import 'package:flutter/material.dart';
import 'package:sakec_app/model/text_link.dart';

void main() => runApp(
  const MaterialApp(
    home: ITScreen(),
  ),
);

class ITScreen extends StatefulWidget {
  const ITScreen({Key? key}) : super(key: key);

  @override
  _ITScreenState createState() => _ITScreenState();
}

class _ITScreenState extends State<ITScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'IT',
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
                  'Prof. Swati Nadkarni',
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
                      "   Ph.D.(Pursuing),M.E.(Electronics)\n"
                      "   Teaching Experience: 22 Years\n"
                      "   Area of Specialization:\n   Machine Learning,\n   Digital Signal and Image processing,\n   Analog and Digital Circuits.\n",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                alignment: Alignment.centerLeft,
              ),
              Container(
                child: const Text(
                  "'With the mindset of nurturing upcoming IT talent,Department of Information Technology was established in 1999. With the aid of best of the Infrastructure and the Staff, we educate students to become good professionals in future. Students are always updated with the latest trends in IT through various guest lectures and workshops.Most of the staff members are actively involved in publishing technical papers at various levels.The Team work of department motivates to set a good example to their successors.'\n\n\n",
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
                    HyperlinkText('Time-Table For SE6-IT',
                    'https://www.shahandanchor.com/it/wp-content/uploads/2022/04/tSE6.pdf'),
                    HyperlinkText('\nIA-2 Time-Table For BE-IT',
                    'https://www.shahandanchor.com/it/wp-content/uploads/2022/04/IA2-TT-IT.pdf \n')
                  ],
                ),
                padding:const EdgeInsets.all(20),
                alignment: Alignment.topLeft,
              ),
            ]
          ),
        )
    );
  }
}