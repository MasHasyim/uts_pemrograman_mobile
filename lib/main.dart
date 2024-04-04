// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:facultyupnvjtapp/developer.dart';
import 'package:facultyupnvjtapp/developer_detail.dart';
import 'prodi_detail.dart';
import 'prodi.dart';
import 'package:facultyupnvjtapp/launch_url.dart';

void main() {
  runApp(const FacultyUPNVJTApp());
}

class FacultyUPNVJTApp extends StatelessWidget {
  const FacultyUPNVJTApp({Key? key}) : super(key: key);

  static const MaterialColor white = MaterialColor(0xFFFFFFFF, <int, Color>{
    50: Color(0xFFFFFFFF),
    100: Color(0xFFFFFFFF),
    200: Color(0xFFFFFFFF),
    300: Color(0xFFFFFFFF),
    400: Color(0xFFFFFFFF),
    500: Color(0xFFFFFFFF),
    600: Color(0xFFFFFFFF),
    700: Color(0xFFFFFFFF),
    800: Color(0xFFFFFFFF),
    900: Color(0xFFFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fakultas Ekonomi dan Bisnis UPNVJT',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('FAKULTAS EKONOMI DAN BISNIS UPNVJT'),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(50),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/FEB.jpg'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'PROFIL FAKULTAS EKONOMI DAN BISNIS UPNVJT',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Fakultas Ekonomi Dan Bisnis Universitas Pembangunan Nasional “Veteran” Jatim, merupakan salah satu  Fakultas tertua yang didirikan pada tahun 1956 dan memiliki student body terbanyak dilingkungan Universitas Pembangunan Nasional “Veteran” Jawa Timur.',
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Align children horizontally at the center
                        children: [
                          GestureDetector(
                            onTap: () {
                              LaunchURL('https://febis.upnjatim.ac.id/');
                            },
                            child: Text(
                              '🌐febis.upnjatim.ac.id',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          SizedBox(
                              width:
                                  20), // Add some space between the URL texts
                          GestureDetector(
                            onTap: () {
                              LaunchURL('mailto:feb@upnjatim.ac.id');
                            },
                            child: Text(
                              '✉feb@upnjatim.ac.id',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Prodi.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ProdiDetail(prodi: Prodi.data[index]);
                            },
                          ),
                        );
                      },
                      child: buildProdiCard(Prodi.data[index]),
                    );
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Text(
                        'DEVELOP BY',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5, // Adjust the height of the author list as needed
                ),
                Container(
                  height: 200,
                  alignment: Alignment.center,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: Author.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return AuthorDetail(author: Author.data[index]);
                              },
                            ),
                          );
                        },
                        child: buildAuthorCard(Author.data[index]),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget buildProdiCard(Prodi prodi) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(prodi.imageUrl),
          ),
          SizedBox(width: 14.0),
          Text(
            prodi.name,
            style: const TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palationo',
            ),
          ),
        ],
      ),
    ),
  );
}

Widget buildAuthorCard(Author author) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(author.imageUrl),
          ),
          SizedBox(height: 8.0),
          Text(
            author.name,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w700,
              fontFamily: 'Palationo',
            ),
          ),
        ],
      ),
    ),
  );
}
