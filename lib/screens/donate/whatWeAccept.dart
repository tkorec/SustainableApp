import 'package:flutter/material.dart';
import 'package:second_app/navigation/navigation.dart';

class DonatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text(
          'What we accept',
          style: TextStyle(
              color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Image.asset('assets/images/progress_one.png'),
                ],
              ),
            ),
          ),
          Text(
            'We accept',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'All clothes in any condition',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            child: WeAcceptMatrix(),
          ),
          Text(
            'We do not accept',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            child: WeDoNotAcceptMatrix(),
          ),
          Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.all(40.0),
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                  context, '/order-donation-bag/free-returns'),
              child: Text(
                "Continue",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(0, 0, 0, 1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70.0),
                ),
              ),
            ),
          ),
          SwizzlBottomNavigation(),
        ],
      ),
    );
  }
}

class WeAcceptMatrix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 40),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      crossAxisCount: 4,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
      ],
    );
  }
}

class WeDoNotAcceptMatrix extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(horizontal: 40),
      crossAxisSpacing: 15,
      mainAxisSpacing: 15,
      crossAxisCount: 4,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                  spreadRadius: 1.0,
                  offset: Offset(2.0, 2.0)),
            ],
          ),
        ),
      ],
    );
  }
}

/*
Text(
            'We accept',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21.0,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'All clothes in any condition',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            child: WeAcceptMatrix(),
          ),
          Text(
            'We do not accept',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: WeDoNotAcceptMatrix(),
          ),
*/
