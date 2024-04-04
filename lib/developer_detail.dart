// ignore_for_file: unused_field, prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'developer.dart';
import 'package:facultyupnvjtapp/launch_url.dart';

class AuthorDetail extends StatefulWidget {
  final Author author;

  const AuthorDetail({Key? key, required this.author}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _AuthorDetailState createState() {
    return _AuthorDetailState();
  }
}

class _AuthorDetailState extends State<AuthorDetail> {
  // ignore: prefer_final_fields
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.author.name),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0), // Adjust padding as needed
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage(widget.author.imageUrl),
                ),
                SizedBox(height: 4),
                Text(
                  widget.author.name,
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Tempat, Tanggal Lahir',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.author.ttl,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Alamat',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.author.address,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'No. HP',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.author.phone,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    widget.author.email,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Github',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      LaunchURL(widget
                          .author.github); // Function to open URL in new tab
                    },
                    child: Text(
                      widget.author.github,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors
                            .blue, // Change text color to indicate it's clickable
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
                    'Pendidikan',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: widget.author.educations.length,
                  itemBuilder: (BuildContext context, int index) {
                    final mission = widget.author.educations[index];
                    return Text('${index + 1}. ${mission}');
                  },
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Prestasi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: widget.author.achievements.length,
                  itemBuilder: (BuildContext context, int index) {
                    final mission = widget.author.achievements[index];
                    return Text('${index + 1}. ${mission}');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
