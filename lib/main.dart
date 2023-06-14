import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mind_game/levels.dart';
import 'package:mind_game/rules.dart';
import 'caesar/caesar_2.dart';
import 'caesar/caesar_3.dart';
import 'caesar/caesar.dart';
import 'braille/braille_2.dart';
import 'braille/braille.dart';
import 'other/other_2.dart';
import 'photo/photo_2.dart';
import 'photo/photo.dart';
import '/morse/morse_2.dart';
import '/morse/morse_code.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mind Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      ),
      initialRoute: '/',
      routes: {
        '/caesar_2': (context) => Caesar_2_Page(),
        '/caesar_3': (context) => Caesar_3_Page(),
        '/caesar': (context) => CaesarPage(),
        '/other_2': (context) => Other_2_Page(),
        '/morse_2': (context) => Morse_2_Page(),
        '/morse': (context) => MorsePage(),
        '/braille_2': (context) => Braille_2_Page(),
        '/braille': (context) => BraillePage(),
        '/photo_2': (context) => Photo_2_Page(),
        '/photo': (context) => PhotoPage(),
        '/rules': (context) => RulesPage(),
      },
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '',
          style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Меню',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              title: Text(
                'Правила гри',
                style: GoogleFonts.roboto(),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                Navigator.pushNamed(context, '/rules');
              },
            ),
            ListTile(
              title: Text(
                'Налаштування',
                style: GoogleFonts.roboto(),
                textAlign: TextAlign.center,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'Політика конфеденційності',
                style: GoogleFonts.roboto(),
                textAlign: TextAlign.center,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgr_2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Mind Game',
                    style: GoogleFonts.roboto(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LevelsPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Color.fromARGB(255, 21, 4, 4),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                    side: BorderSide(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 2.0,
                    ),
                  ),
                ),
                child: Text(
                  'Грати',
                  style: GoogleFonts.roboto(fontSize: 24),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
