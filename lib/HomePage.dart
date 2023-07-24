import 'package:flutter/material.dart';

import 'screens/Contact.dart';
import 'screens/Skill.dart';
import 'screens/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectIndex = 0;

  void _navbarmove(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  List<Widget> _screens = [
    Home(),
    Skill(),
    Contact(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectIndex,
          type: BottomNavigationBarType.fixed,
          onTap: _navbarmove,
          backgroundColor: Colors.black,
          fixedColor: Colors.cyan,
          elevation: 0,
          selectedFontSize: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.monitor_rounded), label: "Skill"),
            BottomNavigationBarItem(
                icon: Icon(Icons.mail_outline), label: "Contact"),
          ]),
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Container(
//           color: Colors.cyan,
//         ),
//       ),

//     );
//   }
// }
