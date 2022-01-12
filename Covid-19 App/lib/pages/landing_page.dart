import 'package:flutter/material.dart';
import '../values/app.styles.dart';
import '../values/app.colors.dart';
import '../values/app.assets.dart';
import './home_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Wellcome to',
                  style: AppStyles.h3,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Covid-19', style: AppStyles.h2.copyWith(color: AppColors.blackGrey, fontWeight: FontWeight.bold)),
                    Text(
                      'Tracker',
                      style: AppStyles.h4.copyWith(
                        height: 0.5,
                      ),
                      textAlign: TextAlign.right,
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(bottom: 72),
              child: RawMaterialButton(
                shape: CircleBorder(),
                fillColor: AppColors.lighBlue,
                child: Image.asset(AppAssets.rightArrow),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => HomePage()), (route) => false);
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
