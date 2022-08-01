import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Temp extends StatefulWidget {
  const Temp({Key? key}) : super(key: key);

  @override
  State<Temp> createState() => _TempState();
}

class _TempState extends State<Temp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Template 1"),
      ),
      body: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.orange, boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(5, 0), // changes position of shadow
                ),
              ]),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.amber,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TitleText(
                    txt: "Your Name",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Content Creator",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const BodyText(),
                  const SizedBox(
                    height: 20,
                  ),
                  TitleText(txt: "Contact me"),
                  ContactWidget(ico: Icons.mail, text: "xxyz@gmail.com"),
                  ContactWidget(
                    ico: Icons.phone,
                    text: "03XX-XXXXXXX",
                  ),
                  ContactWidget(
                    ico: Icons.pin_drop,
                    text: "On the Moon",
                  ),
                  ContactWidget(
                    ico: Icons.language,
                    text: "pataanai.com",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TitleText(txt: "Skills"),
                  SizedBox(
                    height: 25,
                  ),
                  SkillProgress(
                    skill: "Office",
                    prog: 0.7,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SkillProgress(
                    skill: "English",
                    prog: 0.4,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SkillProgress(
                    skill: "Hidden",
                    prog: 0.8,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SkillProgress(
                    skill: "Animation",
                    prog: 0.2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SkillProgress(
                    skill: "Management",
                    prog: 0.2,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  SecTitleTxt(
                    txt: "Education",
                  ),
                  FullEdu(
                    txt1: "UCP",
                    txt2: "BSCS",
                  ),
                  FullEdu(
                    txt1: "PGC",
                    txt2: "ICS",
                  ),
                  SecTitleTxt(
                    txt: "Experience",
                  ),
                  FullEdu(
                    txt1: "cte",
                    txt2: "pataa nai",
                  ),
                  SecTitleTxt(
                    txt: "Languages",
                  ),
                  FullEdu(
                    txt1: "C++",
                    txt2: "Java",
                  ),
                  FullEdu(
                    txt1: "English",
                    txt2: "German",
                  ),
                  SecTitleTxt(
                    txt: "Certificates",
                  ),
                  FullEdu(
                    txt1: "Google",
                    txt2: "Google cloud",
                  ),
                  FullEdu(
                    txt1: "Royal",
                    txt2: "MS OFfice",
                  ),
                  FullEdu(
                    txt1: "UCP",
                    txt2: "Appreciation",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class FullEdu extends StatelessWidget {
  String txt1, txt2;
  FullEdu({
    required this.txt1,
    required this.txt2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SideIco(),
        EduSide(
          name: txt1,
          edu: txt2,
        ),
      ],
    );
  }
}

class EduSide extends StatelessWidget {
  String name, edu;
  EduSide({
    required this.name,
    required this.edu,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 18, color: Colors.amber),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            edu,
            style: TextStyle(fontSize: 18, color: Colors.amber),
          ),
        ],
      ),
    );
  }
}

class SideIco extends StatelessWidget {
  const SideIco({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.radio_button_checked,
            color: Colors.orange,
            size: 25,
          ),
          SizedBox(
            height: 20,
            child: VerticalDivider(
              thickness: 2,
              color: Colors.orange,
            ),
          ),
          Icon(
            Icons.radio_button_checked,
            color: Colors.orange,
            size: 25,
          ),
        ],
      ),
    );
  }
}

class SecTitleTxt extends StatelessWidget {
  String txt;
  SecTitleTxt({
    required this.txt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: TextStyle(
        fontSize: 24,
        color: Colors.orange,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class SkillProgress extends StatelessWidget {
  String skill;
  double prog;

  SkillProgress({
    required this.skill,
    required this.prog,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      height: 40,
      width: 300,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FittedBox(
            child: Text(
              skill,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            width: 80,
            height: 13,
            child: LinearProgressIndicator(
              value: prog,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
              color: Colors.white,
              minHeight: 10,
              backgroundColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class ContactWidget extends StatelessWidget {
  String text;
  IconData ico;

  ContactWidget({
    required this.text,
    required this.ico,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            ico,
            size: 24,
            color: Colors.white,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 15,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10.0),
      child: Text(
        "It is what it is but it is is beyond what is that what is what but it is it is to be what",
        maxLines: 4,
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

// ignore: must_be_immutable
class TitleText extends StatelessWidget {
  String txt;
  TitleText({
    required this.txt,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),
    );
  }
}
