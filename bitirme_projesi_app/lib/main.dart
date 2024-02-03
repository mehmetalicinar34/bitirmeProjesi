// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, deprecated_member_use

import 'package:bitirme_projesi_app/screens/brands/audi/audiScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/audi/models/a4Screen.dart';
import 'package:bitirme_projesi_app/screens/brands/audi/models/etronScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/audi/models/r8Screen.dart';
import 'package:bitirme_projesi_app/screens/brands/audi/models/rs6Screen.dart';
import 'package:bitirme_projesi_app/screens/brands/audi/models/rsq8Screen.dart';
import 'package:bitirme_projesi_app/screens/brands/bmw/bmwScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/bmw/models/320iScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/bmw/models/520iScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/bmw/models/m4Screen.dart';
import 'package:bitirme_projesi_app/screens/brands/bmw/models/m5Screen.dart';
import 'package:bitirme_projesi_app/screens/brands/bmw/models/m8Screen.dart';
import 'package:bitirme_projesi_app/screens/brands/ferrari/models/812Screen.dart';
import 'package:bitirme_projesi_app/screens/brands/ferrari/models/f40Screen.dart';
import 'package:bitirme_projesi_app/screens/brands/ferrari/models/laferrariScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/ferrari/models/romaScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/ferrari/models/sf90SpiderScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/honda/models/accordScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/honda/models/cityScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/honda/models/civic.dart';
import 'package:bitirme_projesi_app/screens/brands/honda/models/nsxScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/honda/models/typerScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/lamborghini/lamborghiniScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/lamborghini/models/aventadorsvjScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/lamborghini/models/countachScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/lamborghini/models/diabloScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/lamborghini/models/huracanScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/lamborghini/models/urusScreen.dart';
import 'package:bitirme_projesi_app/screens/brands/mercedes/models/amgone.dart';
import 'package:bitirme_projesi_app/screens/brands/mercedes/models/c200.dart';
import 'package:bitirme_projesi_app/screens/brands/mercedes/models/e200.dart';
import 'package:bitirme_projesi_app/screens/brands/mercedes/models/s580.dart';
import 'package:bitirme_projesi_app/screens/brands/mercedes/models/slsamg.dart';
import 'package:bitirme_projesi_app/screens/contactScreen.dart';
import 'package:bitirme_projesi_app/screens/homeScreen.dart';
import 'package:bitirme_projesi_app/screens/loginScreen.dart';
import 'package:bitirme_projesi_app/screens/profileScreen.dart';
import 'package:bitirme_projesi_app/screens/registerScreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/brands/ferrari/ferrariScreen.dart';
import 'screens/brands/honda/hondaScreen.dart';
import 'screens/brands/mercedes/mercedesScreen.dart';
import 'screens/welcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auto Atlas',
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
      routes: {
        '/home': (context) => HomeScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        '/contact': (context) => ContactScreen(),
        '/Ferrari': (context) => FerrariScreen(),
        '/812': (context) => Ferrari812Screen(),
        '/roma': (context) => FerrariRomaScreen(),
        '/sf90': (context) => Ferrarisf90SpiderScreen(),
        '/f40': (context) => FerrariF40Screen(),
        '/laferrari': (context) => FerrarilaferrariScreen(),
        '/Honda': (context) => HondaScreen(),
        '/civic': (context) => HondaCivicScreen(),
        '/accord': (context) => HondaAccordScreen(),
        '/typer': (context) => HondaTypeRScreen(),
        '/city': (context) => HondaCityScreen(),
        '/nsx': (context) => HondaNsxScreen(),
        '/Mercedes': (context) => MercedesScreen(),
        '/c200': (context) => Mercedesc200Screen(),
        '/e200': (context) => Mercedese200Screen(),
        '/amgone': (context) => MercedesAmgOneScreen(),
        '/slsamg': (context) => MercedesSlsAmgScreen(),
        '/s580': (context) => MercedesS580Screen(),
        '/Audi': (context) => AudiScreen(),
        '/rs6': (context) => AudiRs6Screen(),
        '/r8': (context) => AudiR8Screen(),
        '/a4': (context) => Audia4Screen(),
        '/rsq8': (context) => Audirsq8Screen(),
        '/etron': (context) => AudietronScreen(),
        '/Bmw': (context) => BmwScreen(),
        '/320i': (context) => Bmw320iScreen(),
        '/520i': (context) => Bmw520iScreen(),
        '/m4': (context) => Bmwm4Screen(),
        '/m5': (context) => Bmwm5Screen(),
        '/m8': (context) => Bmwm8Screen(),
        '/Lamborghini': (context) => LamborghiniScreen(),
        '/huracan': (context) => HuracanScreen(),
        '/countach': (context) => LamborghiniCountachScreen(),
        '/urus': (context) => LamborghiniUrusScreen(),
        '/diablo': (context) => LamborghiniDiabloScreen(),
        '/aventadorsvj': (context) => LamborghiniAventadorsvjScreen(),
      },
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 31, 31, 31)),
        scaffoldBackgroundColor: Colors.transparent, // Set scaffold background to transparent
        iconTheme: IconThemeData(color: Colors.grey),
        useMaterial3: true,
        textTheme: GoogleFonts.dellaRespiraTextTheme(Theme.of(context).textTheme),       
      ),
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 35, 50, 77),
                const Color.fromARGB(255, 31, 31, 31),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: child,
        );
      },
    );
  }
}
