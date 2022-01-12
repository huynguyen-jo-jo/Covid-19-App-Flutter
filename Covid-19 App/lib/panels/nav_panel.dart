import 'package:flutter/material.dart';
import '../values/app.datasource.dart';
import '../pages/regination_page.dart';
import '../pages/infor_page.dart';

class NavPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => CountryPage()));
                },
                child: Container(
                    color: primaryBlack,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('WORLD', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ))),
            GestureDetector(
                onTap: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => InfoScreen()), (route) => false);
                },
                child: Container(
                    color: primaryBlack,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('GET TO KNOW AB COVID-19', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ))),
            Container(
                color: primaryBlack,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Hope covid 19 will end soon...', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    )
                  ],
                ))
          ],
        ));
  }
}
