import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  List<Logo> _skills = [
    Logo(Logos.flutter),
    Logo(Logos.firebase),
    Logo(Logos.javascript),
    Logo(Logos.html),
    Logo(Logos.css),
    Logo(Logos.react),
    Logo(
      Logos.typescript,
    ),
    Logo(Logos.python),
    Logo(Logos.git),
    Logo(Logos.php),
    Logo(Logos.mysql),
    Logo(Logos.figma),
    Logo(Logos.node_js),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Skills"),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: _skills.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white38,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                child: _skills[index],
              ),
            );
          }),
    );
  }
}
