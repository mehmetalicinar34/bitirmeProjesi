// ignore_for_file: prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 35, 50, 77),
              const Color.fromARGB(255, 31, 31, 31)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/atlas_logo.svg',
                height: 180,
              ),
              SizedBox(height: 20),
              Text(
                'Welcome to Auto Atlas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              routeButton(context, 'Get Started', '/home'),
              SizedBox(height: 40),
              routeButton(context, 'Login', '/login'),
              SizedBox(height: 40),
              routeButton(context, 'Register', '/register'),
            ],
          ),
        ),
      ).animate().fadeIn(duration: 1000.ms, delay: 1000.ms),
    );
  }

  Widget routeButton(BuildContext context, String text, String routePath) {
    return Container(
      height: 50,
      width: 275,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Color.fromARGB(27, 158, 158, 158),
        ),
      ),
      child: ElevatedButton(
        onPressed: () {
          // Navigate to the next screen
          Navigator.pushNamed(context, routePath);
        },
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          primary: Colors.transparent,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
