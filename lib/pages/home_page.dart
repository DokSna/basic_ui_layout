import 'package:flutter/material.dart';

class WeatherForecast extends StatelessWidget {
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 0.0, //убираем тень
        title: const Text(
          'Weather Forecast',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _buildBody(),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
      child: Column(
    children: <Widget>[
      _searchBox(),
    ],
  ));
}

// TextField
_searchBox() {
  return const SizedBox(
    height: 40.0,
    child: Padding(
      padding: EdgeInsetsDirectional.only(start: 12.0, end: 14.0),
      child: TextField(
        maxLines: 1,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          icon: SizedBox(
            width: 20,
            height: 18,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          border: InputBorder.none, //hintText
          hintText: 'Enter City Name',
          hintStyle: TextStyle(color: Colors.white),
          // labelText: 'Enter City Name',
          // labelStyle: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
