import 'package:flutter/material.dart';
import 'package:febprofileapp/developer.dart';
import 'package:febprofileapp/developer_detail.dart';
import 'prodi_detail.dart';
import 'prodi.dart';
import 'package:febprofileapp/launch_url.dart';

void main() {
  runApp(const FEBProfileApp());
}

class FEBProfileApp extends StatelessWidget {
  const FEBProfileApp({Key? key}) : super(key: key);

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
          title: Text(
            'FAKULTAS EKONOMI DAN BISNIS UPNVJT',
            style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.blue.withOpacity(0.5), // Biru tua agak transparan
          ),
          child: SingleChildScrollView(
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
                            color: Color.fromARGB(255, 20, 74, 238),
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
                            color: Color.fromARGB(255, 213, 244, 255),
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
                                  color: Color.fromARGB(255, 20, 74, 238),
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
                                  color: Color.fromARGB(255, 20, 74, 238),
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
                            color: Color.fromARGB(255, 20, 74, 238),
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
                                  return AuthorDetail(
                                      author: Author.data[index]);
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
      ),
    );
  }
}

Widget buildProdiCard(Prodi prodi) {
  return Card(
    elevation: 2.0,
    color: Colors.blue.withOpacity(0.3),
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
                color: Color.fromARGB(255, 205, 242, 255)),
          ),
        ],
      ),
    ),
  );
}

Widget buildAuthorCard(Author author) {
  return Card(
    elevation: 2.0,
    color: Colors.blue.withOpacity(0.3),
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
              color: Color.fromARGB(255, 205, 242, 255),
            ),
          ),
        ],
      ),
    ),
  );
}
