import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200.0,
              decoration: BoxDecoration(
//                color: Color(0xfff44336),
                image: DecorationImage(
                  image: AssetImage('images/try1.png'),
                  fit: BoxFit.fill,
                ),
                //shape: BoxShape.circle,
              ),
            ),
//            SizedBox(
//              height: 8.0,
//            ),
            Container(
              height: 40.0,
              color: Color(0xff2196F3),
              child: Center(
                child: Text(
                  'GARMENTS',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 4.25,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              height: 164,
              width: double.maxFinite,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Pay(),
                            ));
                      },
                      child: Expanded(
                        child: Card(
                          color: Colors.black,
                          child: Image(
                            image: AssetImage(
                              'images/polo.jpg',
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 34.0,
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.black,
                        child: Image(
                          image: AssetImage(
                            'images/frock1.jpg',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 24.0,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              height: 164,
              width: double.maxFinite,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Expanded(
                      child: Card(
                        color: Colors.black,
                        child: Image(
                          image: AssetImage(
                            'images/overcoat.jpg',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 34.0,
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.black,
                        child: Image(
                          image: AssetImage(
                            'images/frock2.jpeg',
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
