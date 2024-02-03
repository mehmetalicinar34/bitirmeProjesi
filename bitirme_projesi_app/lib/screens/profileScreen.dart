// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    String userName = prefs.getString('user_name') ?? '';
    String userSurname = prefs.getString('user_surname') ?? '';
    String userEmail = prefs.getString('user_email') ?? '';

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile Screen",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: Center(
        child: Container(
          height: 220,
          width: 350,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(75, 158, 158, 158)),
            borderRadius: BorderRadius.circular(12),
            color: Colors.transparent,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Name: $userName',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 30),
              Text(
                'Surname: $userSurname',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
              SizedBox(height: 30),
              Text(
                'Email: $userEmail',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
