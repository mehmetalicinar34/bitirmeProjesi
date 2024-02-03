// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class AudiScreen extends StatelessWidget {
  const AudiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Audi Models',
          style: TextStyle(
            color: Colors.grey,
          ),
        ).animate().fade(duration: 750.ms, delay: 500.ms).slideX(duration: 750.ms, delay: 500.ms),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildModelButton(
              context,
              'Rs 6',
              '/rs6',
            ).animate().fade(duration: 750.ms, delay: 1000.ms).slideX(duration: 750.ms, delay: 1000.ms),
            SizedBox(height: 20),
            _buildModelButton(
              context,
              'R8',
              '/r8',
            ).animate().fade(duration: 750.ms, delay: 1000.ms).slideX(duration: 750.ms, delay: 1000.ms),
            SizedBox(height: 20),
            _buildModelButton(
              context,
              'A4',
              '/a4',
            ).animate().fade(duration: 750.ms, delay: 1000.ms).slideX(duration: 750.ms, delay: 1000.ms),
            SizedBox(height: 20),
            _buildModelButton(
              context,
              'Rs Q8',
              '/rsq8',
            ).animate().fade(duration: 750.ms, delay: 1000.ms).slideX(duration: 750.ms, delay: 1000.ms),
            SizedBox(height: 20),
            _buildModelButton(
              context,
              'E Tron',
              '/etron',
            ).animate().fade(duration: 750.ms, delay: 1000.ms).slideX(duration: 750.ms, delay: 1000.ms),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildModelButton(
      BuildContext context, String modelName, String route) {
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
            Navigator.pushNamed(context, route);
          },
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  modelName,
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
}
