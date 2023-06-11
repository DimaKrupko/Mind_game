import 'package:flutter/material.dart';

class Photo_1_Page extends StatefulWidget {
  @override
  _Photo_1_PageState createState() => _Photo_1_PageState();
}

class _Photo_1_PageState extends State<Photo_1_Page> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _checkText() {
    String inputText = _textEditingController.text.toLowerCase();
    if (inputText == 'unbelievable') {
      Navigator.pushReplacementNamed(context, '/photo');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/backgr_2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/secret_picture_1.jpg',
                    width: 390,
                    height: 300,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              child: Column(
                children: [
                  TextField(
                    controller: _textEditingController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      hintText: 'Enter found text',
                    ),
                  ),
                  SizedBox(height: 0),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 50),
                      primary: Colors.transparent,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                        side: BorderSide(
                          color: Color.fromARGB(255, 0, 0, 0),
                          width: 2.0,
                        ),
                      ),
                    ),
                    onPressed: _checkText,
                    child: Text(
                      'Check',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
