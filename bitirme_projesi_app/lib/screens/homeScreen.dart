// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Car Brands',
          style: TextStyle(
            color: Colors.grey,
          ),
        )
            .animate()
            .fade(duration: 750.ms, delay: 500.ms)
            .slideX(duration: 750.ms, delay: 500.ms),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 35, 50, 77),
                const Color.fromARGB(255, 31, 31, 31),
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 200,
                width: double.infinity,
                color: Colors.transparent,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      'assets/images/atlas_logo.svg',
                      height: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Auto Atlas',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              _DrawerButton(context, 'Profile', '/profile'),
              Divider(
                color: Color.fromARGB(67, 158, 158, 158),
              ),
              _DrawerButton(context, 'Contact', '/contact'),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildBrandButton(
                      context, 'Ferrari', 'assets/images/ferrari_logo.svg')
                  .animate()
                  .fade(duration: 750.ms, delay: 1000.ms)
                  .slideX(duration: 750.ms, delay: 1000.ms),
              SizedBox(height: 16),
              _buildBrandButton(
                      context, 'Honda', 'assets/images/honda_logo.svg')
                  .animate()
                  .fade(duration: 750.ms, delay: 1000.ms)
                  .slideX(duration: 750.ms, delay: 1000.ms),
              SizedBox(height: 16),
              _buildBrandButton(
                      context, 'Mercedes', 'assets/images/mercedes_logo.svg')
                  .animate()
                  .fade(duration: 750.ms, delay: 1000.ms)
                  .slideX(duration: 750.ms, delay: 1000.ms),
              SizedBox(height: 16),
              _buildBrandButton(context, 'Audi', 'assets/images/audi_logo.svg')
                  .animate()
                  .fade(duration: 750.ms, delay: 1000.ms)
                  .slideX(duration: 750.ms, delay: 1000.ms),
              SizedBox(height: 16),
              _buildBrandButton(context, 'Lamborghini',
                      'assets/images/lamborghini_logo.svg')
                  .animate()
                  .fade(duration: 750.ms, delay: 1000.ms)
                  .slideX(duration: 750.ms, delay: 1000.ms),
              SizedBox(height: 16),
              _buildBrandButton(context, 'Bmw', 'assets/images/bmw_logo.svg')
                  .animate()
                  .fade(duration: 750.ms, delay: 1000.ms)
                  .slideX(duration: 750.ms, delay: 1000.ms),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBrandButton(
      BuildContext context, String brand, String logoPath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/$brand');
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  logoPath,
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 15),
                Text(
                  brand,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                Spacer(),
                Icon(Icons.arrow_forward, color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _DrawerButton(BuildContext context, String label, String route) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, route);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        width: double.infinity,
        child: Text(
          label,
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
