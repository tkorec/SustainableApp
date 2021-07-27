import 'package:flutter/material.dart';

class OurSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(184, 216, 189, 1),
      body: Column(
        children: <Widget>[

        ],
      ),
    );
  }
}

/*
class OurSignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(184, 216, 189, 1),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            //mainAxisAlignment: MainAxisAlignment.center,
            child: Image.asset(
              'assets/images/signinlogo.png',
              width: 300.0,
              height: 300.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(45, 62, 80, 1),
                      ),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(45, 62, 80, 1),
                      ),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(45, 62, 80, 1),
                      ),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Color.fromRGBO(45, 62, 80, 1),
                      ),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  height: 60,
                  width: double.infinity,
                  //margin: EdgeInsets.all(60.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(45, 62, 80, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(70.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                TextButton(
                  child: Text(
                    'Or sign up',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromRGBO(45, 62, 80, 1),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      Icons.facebook_rounded,
                      color: Color.fromRGBO(45, 62, 80, 1),
                      size: 50.0,
                    ),

                  ],
                ),
              ],
            ),

          ),
        ],
      ),
    );
  }
}
*/