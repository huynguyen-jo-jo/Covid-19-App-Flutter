import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {
  final Map worldData;
  WorldWidePanel(this.worldData);
  @override
  Widget build(BuildContext context) {
    return Container(
        //1
        child: GridView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(childAspectRatio: 2, crossAxisCount: 2),
      children: [
        StatusPanel(Colors.red.shade100, Colors.red, 'CONFIRMED', worldData['cases'].toString()),
        StatusPanel(Colors.blue.shade100, Colors.blue.shade900, 'ACTIVE', worldData['active'].toString()),
        StatusPanel(Colors.green.shade100, Colors.green, 'RECOVERED', worldData['recovered'].toString()),
        StatusPanel(Colors.grey.shade400, Colors.grey.shade900, 'DEATHS', worldData['deaths'].toString()),
      ],
    ));
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  StatusPanel(this.panelColor, this.textColor, this.title, this.count);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 80,
      width: width / 2,
      margin: EdgeInsets.all(5),
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor)),
          Text(count, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: textColor))
        ],
      ),
    );
  }
}
