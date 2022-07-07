import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList =[
  'images/01.png',
  'images/02.png',
  'images/03.png',
  'images/04.png',
  'images/05.png',
  'images/06.png',
  'images/07.png',
  'images/08.png',
  'images/09.png',
  'images/10.png',
  'images/11.png',
  'images/12.png',
  'images/13.png',
  'images/14.png',
  'images/15.png',
  'images/16.png',
];

class StudentList extends StatelessWidget {
  const StudentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student List")),
      body: Center(
        child: Column(
          children: [

            CarouselSlider(
              options: CarouselOptions(autoPlay: true, height: 200, aspectRatio: 2.0, enlargeCenterPage: true),
              items: imgList.map((item) => 
                Container(
                  child: Center(
                    child: Image.network(item, fit: BoxFit.cover)
                  ),
                )
              ).toList()
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back to Main Page")
            )
          ],
        )
      ), // Elevated Button // Center
    ); // Scaffold
  }
}
