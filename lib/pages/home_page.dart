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
  return Row(children: const [
    SizedBox(
      width: 300,
      child: TextField(
        // obscureText: true,
        decoration: InputDecoration(
          icon: Icon(Icons.search),
          iconColor: Colors.white,
          border: InputBorder.none,
          // border: OutlineInputBorder(),
          labelText: 'Enter City Name',
          labelStyle: TextStyle(color: Colors.white),
        ),
      ),
    ),
  ]);
}
