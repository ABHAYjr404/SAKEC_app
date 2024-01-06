import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:sakec_app/model/user_model.dart';
import 'package:sakec_app/screens/comps_screen.dart';
import 'package:sakec_app/screens/extc_screen.dart';
import 'package:sakec_app/screens/it_screen.dart';
import 'login_screen.dart';

void main() => runApp(
  const MaterialApp(
    home: HomeScreen(),
  ),
);

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;

  User? user = FirebaseAuth.instance.currentUser;
  UserModel loggedInUser = UserModel();

  @override
  void initState() {
    super.initState();
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      loggedInUser = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  get screens => [
    Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Material(
              elevation: 15,
              borderRadius: const BorderRadius.horizontal(),
              color: Colors.indigo.shade800,
              child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const COMPSScreen())
                    );
                  },
                  child: const Text(
                    "COMPS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Material(
              elevation: 15,
              borderRadius: const BorderRadius.horizontal(),
              color: Colors.indigo.shade800,
              child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ITScreen())
                    );
                  },
                  child: const Text(
                    "IT",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Material(
              elevation: 15,
              borderRadius: const BorderRadius.horizontal(),
              color: Colors.indigo.shade800,
              child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const EXTCScreen())
                    );
                  },
                  child: const Text(
                    "EXTC",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                    ),
                  )
              ),
            ),
          ],
        ),
      ),
    ),

    SingleChildScrollView(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 10),
            child: buildAnimatedText(
                'Shah and Anchor Kutchhi Engineering College is awarded A (3.16 CGPA) Grade by National Assessment and Accreditation Council (NAAC) w.e.f. 20-10-2021\n'
                'The Institute has been ranked in the 251-300 band by National Institutional Ranking Framework (NIRF) for the NIRF 2020 and applied for NIRF 2022'),
          ),

          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(top: 3),
            child: buildAnimatedText(
                'The Institute has been ranked in the 251-300 band by National Institutional Ranking Framework (NIRF) for the NIRF 2020 and applied for NIRF 2022'),
          ),

          Container(
              child: Image.asset(
                'assets/clg.jpg',
                width: 400,
              )
          ),
          Container(
            child: const Text(
              'Vision',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                fontSize: 24,
              ),
            ),
            color: Colors.cyan,
            alignment: Alignment.center,
          ),
          Container(
            child: const Text(
              '\n“To become a globally recognized institution offering quality education and enhancing professional standards”\n\n',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Container(
            child: const Text(
              'Mission',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                fontSize: 24,
              ),
            ),
            color: Colors.cyan,
            alignment: Alignment.center,
          ),
          Container(
            child: const Text(
              '\n“To impart high-quality technical education to the students by providing an excellent academic environment, well-equipped laboratories and training through the motivated teachers."\n\n',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Container(
            child: const Text(
              'Quality Policy',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                fontSize: 24,
              ),
            ),
            color: Colors.cyan,
            alignment: Alignment.center,
          ),
          Container(
            child: const Text(
              '\nWe, at Shah & Anchor Kutchhi Engineering College, cherish a mission of achieving our goal of imparting state of art technical and management education in the emerging disciplines.We fulfill our commitment through periodic review of academic environment and management system and continual improvement of infrastructure, teaching techniques and faculty skills to keep pace with the latest developments.While doing so, we ensure compliance with the applicable rules, regulation and statutory requirements in force for the self-financed minority education institution.\n\n',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Container(
            child: const Text(
              'About Institute',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                fontSize: 24,
              ),
            ),
            color: Colors.cyan,
            alignment: Alignment.center,
          ),
          Container(
            child: const Text(
              '\n"Shah & Anchor Kutchhi Engineering College is an engineering college in Mumbai affiliated under University Of Mumbai. The college offers technical education to students. This college was established by the Mahavir Education Trust in 1985, making it one of the oldest technical institutes in the state.The college has been graded A By NAAC for 5 years from 2021. Computer Engineering and Information Technology branches are accredited By NBA. Shah and Anchor Kutchhi Engineering college was place in band 251- 300 band in NIRF 2020"\n\n'
              '"In 1983 the Mahavir Education Trust was established. The Bachelor of Engineering course offered by the University of Mumbai. Institute establishing a strong brand image for itself in the engineering domain. The funds for the development of the Engineering College are being augmented by donation from many other philanthropic business and industrialists. The Engineering College is run by the Mahavir Education Trust established for development of appropriate education in technical field."\n\n',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          // Container(
          //   child: const Text('Location & Layout',
          //   style: TextStyle(
          //       fontWeight: FontWeight.bold,
          //       decoration: TextDecoration.underline,
          //       fontSize: 24,
          //     ),
          //   ),
          //   color: Colors.cyan,
          //   alignment: Alignment.center,
          // ),
          // Container(
          //   child: const Text(
          //       '\n"Shah & Anchor Kutchhi Engineering College is located on Waman Tukaram Patil Marg, Chembur, Nearest railway station is Govandi. Deonar Bus Depot on Mumbai- Pune Highway is within walking distance. All laboratories, class rooms, drawing hall, students room, sports hall, administrative office are situated in a seven-storeyed building of the college."\n\n',
          //     style: TextStyle(
          //       fontSize: 17,
          //     ),
          //   ),
          // ),
          Container(
            child: const Text(
              'Shah & Anchor Kutchhi Engineering College \nMahavir Education Trust Chowk, W. T. Patil Marg, \nNear Dukes Company, \nChembur, Mumbai- 400 088.\n© Shah & Anchor Kutchhi Engineering College.',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            color: Colors.cyan,
            alignment: Alignment.center,
          ),
        ],
      ),
    ),
    Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 150,
              child:
                  Image.asset("assets/sakec_logo.png", fit: BoxFit.contain),
            ),
            const Text(
              "HELLO!!!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 30,
            ),
            Text("${loggedInUser.fullName}",
                style: const TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(
              height: 15,
            ),
            Text("Registeration ID:- ${loggedInUser.registrationNumber}",
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
            Text("${loggedInUser.email}",
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                )),
            const SizedBox(
              height: 30,
            ),
            
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(30),
              color: Colors.indigo.shade800,
              child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  //minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {
                    logout(context);
                  },
                  child: const Text(
                    "Logout",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
              ),
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'S A K E C',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        // leading: const CircleAvatar(
        //   backgroundImage: AssetImage(("assets/sakec_logo.png")),
        // ),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.circle_notifications_outlined),
              label: 'Department'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: 'Account'),
        ],
      ),
    );
  }

  Widget buildAnimatedText(String text) => Container(
        height: 30,
        color: Colors.cyan,
        margin: const EdgeInsets.all(10),
        child: Marquee(
          text: text,
          style: const TextStyle(fontSize: 24, color: Colors.black),
          blankSpace: 90,
          velocity: 120,
          //pauseAfterRound: const Duration (seconds: 1),
        ),
      );

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const LoginScreen()));
  }
}
