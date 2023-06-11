import 'package:flutter/material.dart';
import 'photo_1.dart';
import 'photo_2.dart';
import 'photo_3.dart';
import 'photo_4.dart';

class PhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hidden text'),
        backgroundColor: Colors.black,
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
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 16.0,
                  runSpacing: 16.0,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Photo_1_Page()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.black,
                        minimumSize: Size(110, 110),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        '1',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      // {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Photo_2_Page()),
                      //   );
                      // },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.black,
                        minimumSize: Size(110, 110),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        '2',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      // {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Photo_3_Page()),
                      //   );
                      // },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.black,
                        minimumSize: Size(110, 110),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      // {
                      //   Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => Photo_4_Page()),
                      //   );
                      // },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        onPrimary: Colors.black,
                        minimumSize: Size(110, 110),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 2.0,
                        ),
                      ),
                      child: Text(
                        '4',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
