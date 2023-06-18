import 'package:flutter/material.dart';
import '/caesar/caesar.dart';
import 'morse/morse_code.dart';
import 'photo/photo.dart';
import '/braille/braille.dart';
import 'other/other.dart';

class LevelsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.black,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/backgr_2.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(10, 40, 10, 16),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CaesarPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onPrimary: Colors.black,
                            minimumSize: Size(375, 75),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 2.0),
                            ),
                          ),
                          child: Text(
                            'Шифр Цезаря',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MorsePage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onPrimary: Colors.black,
                            minimumSize: Size(375, 75),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 2.0),
                            ),
                          ),
                          child: Text(
                            'Код Морзе',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PhotoPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onPrimary: Colors.black,
                            minimumSize: Size(375, 75),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 2.0),
                            ),
                          ),
                          child: Text(
                            'Стеганографія',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BraillePage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onPrimary: Colors.black,
                            minimumSize: Size(375, 75),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 2.0),
                            ),
                          ),
                          child: Text(
                            'Шрифт Брайля',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OtherPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            onPrimary: Colors.black,
                            minimumSize: Size(375, 75),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              side: BorderSide(width: 2.0),
                            ),
                          ),
                          child: Text(
                            'Інші шифри',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      SizedBox(height: constraints.maxHeight),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
