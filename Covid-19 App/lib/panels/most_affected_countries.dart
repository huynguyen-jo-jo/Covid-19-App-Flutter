import 'package:flutter/material.dart';
import 'dart:math';

//542151659
//74624701
class MostAffectedCountries extends StatelessWidget {
  final List countyData;

  MostAffectedCountries(this.countyData);
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int randomNumber = random.nextInt(100);
    // return Container(
    //     child: ListView(
    //   shrinkWrap: true,
    //   children: [
    //     for (var index = randomNumber; index < (randomNumber + 5); index++)
    //       Container(
    //         margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             Expanded(
    //                 flex: 1,
    //                 child: Image.network(
    //                   countyData[index]["countryInfo"]["flag"],
    //                   height: 30,
    //                 )),
    //             Expanded(flex: 1, child: Text(countyData[index]["country"], style: TextStyle(fontWeight: FontWeight.bold))),
    //             Expanded(
    //               flex: 1,
    //               child: Text(
    //                 'Deaths: ' + countyData[index]["deaths"].toString(),
    //                 style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //           ],
    //         ),
    //       )
    //   ],
    // )
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: Image.network(
                        countyData[index]["countryInfo"]["flag"],
                        height: 30,
                      )),
                  Expanded(flex: 1, child: Text(countyData[index]["country"], style: TextStyle(fontWeight: FontWeight.bold))),
                  Expanded(
                    flex: 1,
                    child: Text(
                      'Deaths: ' + countyData[index]["deaths"].toString(),
                      style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            );
          },
          itemCount: 5),
    );
  }
}
