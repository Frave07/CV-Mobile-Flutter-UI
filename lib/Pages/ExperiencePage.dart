import 'package:cv_mobile/Pages/AboutPage.dart';
import 'package:cv_mobile/Pages/EducationPage.dart';
import 'package:cv_mobile/Widgets/CardCustom.dart';
import 'package:cv_mobile/Widgets/CardTop.dart';
import 'package:flutter/material.dart';


class ExperiencePage extends StatelessWidget
{

 @override
 Widget build(BuildContext context)
 {
    return Scaffold(
      backgroundColor: Color(0xff040305),
      appBar: AppBar(
        backgroundColor: Color(0xff040305),
        elevation: 0,
        title: Text('About Me', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Column(
            children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardTop(icon: Icons.person_outline_rounded, text: 'About Me', isColor: false, page: AboutMePage()),
                    CardTop(icon: Icons.work_outline_outlined, text: 'Experience', isColor: true),
                    CardTop(icon: Icons.stacked_line_chart_sharp, text: 'Education', isColor: false, page: EducationPage()),
                  ],
                ),

                SizedBox(height: 15.0),
                CardCustom(text: 'Freelance Web Designer',colorIcon: Color(0xffA36FF6), isEducation: false),
                CardCustom(text: 'Senior Web Developer',colorIcon: Color(0xff83DBC5), isEducation: false),
                CardCustom(text: 'Semi Senior Web Developer',colorIcon: Color(0xff0385DC), isEducation: false),
                CardCustom(text: 'Junior Web Developer',colorIcon: Color(0xffE62755), isEducation: false),
                CardCustom(text: 'Freelance App Flutter',colorIcon: Color(0xffF7605D), isEducation: false),
            ],
          ),
        ),
      ),
     );
  }
}

