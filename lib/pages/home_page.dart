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
      const SizedBox(
        height: 20,
      ),
      _cityDetail(),
    ],
  ));
}

// TextField
Widget _searchBox() {
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

// City Detail
Widget _cityDetail() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        _location(),
        const SizedBox(
          height: 10,
        ),
        _date(),
      ],
    ),
  );
}

Text _location() {
  return const Text(
    'Murmansk Oblast, RU',
    style: TextStyle(fontSize: 35.5, color: Colors.white),
  );
}

Text _date() {
  return const Text(
    'Friday, Mar 20, 2020',
    style: TextStyle(fontSize: 18, color: Colors.white),
  );
}
