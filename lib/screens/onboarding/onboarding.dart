import 'package:flutter/material.dart';
import 'package:second_app/widgets/buttons.dart';

class SignInOnboarding extends StatefulWidget {
  @override
  _SignInOnboardingState createState() => _SignInOnboardingState();
}

class _SignInOnboardingState extends State<SignInOnboarding> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: PageView.builder(
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Image.asset(
                          contents[i].image,
                          width: 300,
                          height: 300,
                        ),
                        Text(
                          contents[i].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 26.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          contents[i].text,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 21,
                            height: 1.6,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          SizedBox(height: 30),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                contents.length,
                (index) => buildDot(index, context, currentIndex),
              ),
            ),
          ),
          BlackButton(
              title: 'Enter',
              onPressed: () => Navigator.pushNamed(context, '/'),
              margin: EdgeInsets.only(bottom: 60, left: 40, right: 40, top: 60)
              ),
        ],
      ),
    );
  }
}

class OnboardingContent {
  var title;
  var text;
  var image;

  OnboardingContent({this.title, this.text, this.image});
}

List<OnboardingContent> contents = [
  OnboardingContent(
      title: 'Donate',
      text: 'Order bag and fill it up \n Send it back for free',
      image: 'assets/images/onboarding_one.png'),
  OnboardingContent(
      title: 'Marketplace',
      text: 'Find bargins in the drop \n Discover sustainable brands',
      image: 'assets/images/onboarding_two.png'),
  OnboardingContent(
      title: 'Credit Store',
      text: 'View your points \n Exchange points for discounts',
      image: 'assets/images/undraw_discount.png')
];

Container buildDot(int index, BuildContext context, int currentIndex) {
  return Container(
    height: 12,
    width: 12,
    margin: EdgeInsets.only(right: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      color: currentIndex == index
          ? Color.fromRGBO(68, 68, 68, 1)
          : Color.fromRGBO(196, 196, 196, 1),
    ),
  );
}
