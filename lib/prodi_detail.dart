// ignore_for_file: library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors, unused_import

import 'package:febprofileapp/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package
import 'prodi.dart';

class ProdiDetail extends StatefulWidget {
  final Prodi prodi;

  const ProdiDetail({Key? key, required this.prodi}) : super(key: key);

  @override
  _ProdiDetailState createState() {
    return _ProdiDetailState();
  }
}

class _ProdiDetailState extends State<ProdiDetail> {
  // ignore: unused_field
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.prodi.name),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue
              .withOpacity(0.5), // Background color: biru muda, transparan
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Adjust padding as needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.transparent,
                    child: ClipOval(
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          widget.prodi.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    widget.prodi.name,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 40),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Profile',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.prodi.profile,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Visi',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.prodi.vision,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Misi',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.prodi.missions.length,
                    itemBuilder: (BuildContext context, int index) {
                      final mission = widget.prodi.missions[index];
                      return Text('${index + 1}. ${mission}');
                    },
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Akreditasi',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.prodi.acreditation,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Ketua Program Studi',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      widget.prodi.leader,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Dosen',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.prodi.lectures.length,
                    itemBuilder: (BuildContext context, int index) {
                      final lecture = widget.prodi.lectures[index];
                      return Text('${index + 1}. ${lecture}');
                    },
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Website',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        LaunchURL(widget
                            .prodi.website); // Function to open URL in new tab
                      },
                      child: Text(
                        widget.prodi.website,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 32, 19,
                              222), // Change text color to indicate it's clickable
                          decoration: TextDecoration
                              .underline, // Add underline for better indication
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        LaunchURL(
                            'mailto:${widget.prodi.email}'); // Function to open URL in new tab
                      },
                      child: Text(
                        widget.prodi.email,
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 32, 19,
                              222), // Change text color to indicate it's clickable
                          decoration: TextDecoration
                              .underline, // Add underline for better indication
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Prestasi Mahasiswa',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: widget.prodi.achievements.length,
                    itemBuilder: (BuildContext context, int index) {
                      final achievement = widget.prodi.achievements[index];
                      return Text('${index + 1}. ${achievement}');
                    },
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
