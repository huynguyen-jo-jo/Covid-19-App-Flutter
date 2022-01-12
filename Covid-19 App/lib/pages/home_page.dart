import 'package:flutter/material.dart';
import '../values/app.colors.dart';
import '../values/app.datasource.dart';
import '../panels/world_wide_panels.dart';
import '../panels/most_affected_countries.dart';
import '../panels/nav_panel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageSate createState() => _HomePageSate();
}

class _HomePageSate extends State<HomePage> {
  var worldData;
  var countryData;
  fetchWorldWideData() async {
    var res = await http.get(Uri.parse('https://disease.sh/v3/covid-19/all'));
    setState(() {
      worldData = json.decode(res.body);
    });
  }

  fetchCountryData() async {
    var res = await http.get(Uri.parse('https://disease.sh/v3/covid-19/countries'));
    setState(() {
      countryData = json.decode(res.body);
    });
  }

  @override
  void initState() {
    fetchWorldWideData();
    fetchCountryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Text('COVID-19 TRACKER'),
          backgroundColor: AppColors.primaryColor,
        ),
        body: ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 100,
                    color: Colors.orange[100],
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(DataSource.quote, style: TextStyle(color: Colors.orange[800], fontWeight: FontWeight.bold, fontSize: 16)),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Text('Worldwide', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
                  worldData == null ? CircularProgressIndicator() : WorldWidePanel(worldData),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      'Most affected Countries',
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  countryData == null ? CircularProgressIndicator() : MostAffectedCountries(countryData),
                  NavPanel(),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )));
  }
}
