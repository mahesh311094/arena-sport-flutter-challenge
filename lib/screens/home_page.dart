import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sport_app/api/networking.dart';
import 'package:sport_app/component/card_view.dart';
import 'package:sport_app/views/noticias.dart';
import 'package:sport_app/views/partidos.dart';
import 'package:sport_app/views/team_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePageContent();
  }
}

class HomePageContent extends StatefulWidget {
  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  void initState() {
    super.initState();
    var data = getApiData();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          SizedBox(height: 10),
          TeamList(),
          CardView(
            title: 'PARTIDOS',
            subTitle: 'Ver todos',
            child: Partidos(),
          ),
          CardView(
            title: 'NOTICIAS',
            subTitle: 'Ver todos',
            child: Noticias(),
          ),
          CardView(
            title: 'PARTIDOS',
            subTitle: 'Ver todos',
            child: Partidos(),
          ),
          SizedBox(height: 10)
        ],
      ),
    );
  }

  Future<dynamic> getApiData() async {
    NetworkHelper networkHelper = NetworkHelper('leagues/country/91');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}
