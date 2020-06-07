import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              image: AssetImage(
                'assets/images/app_logo.png'
              ),
            ),
            Text('Thank You for Using ShopSafe!'),
            SizedBox(height: 10,),
            Icon(Icons.favorite, color: Colors.red,)
          ],
        ),
      );
  }
}
