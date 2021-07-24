import 'package:flutter/material.dart';

class SwizzlBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              padding: EdgeInsets.only(top: 8),
              height: 80.0,
              width: MediaQuery.of(context).size.width / 3,
              child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/'),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.volunteer_activism_outlined,
                      size: 30,
                    ),
                    Text('Donate'),
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              padding: EdgeInsets.only(top: 8),
              height: 80.0,
              width: MediaQuery.of(context).size.width / 3,
              child: GestureDetector(
                onTap: () =>
                    Navigator.pushNamed(context, '/order-donation-bag'),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.storefront_outlined,
                      size: 30,
                    ),
                    Text('Marketplace'),
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromRGBO(0, 0, 0, 0.1),
              padding: EdgeInsets.only(top: 8),
              height: 80.0,
              width: MediaQuery.of(context).size.width / 3,
              child: GestureDetector(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.account_balance_wallet_outlined,
                      size: 30,
                    ),
                    Text('Credit store'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}