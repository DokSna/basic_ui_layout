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
      const SizedBox(
        height: 20,
      ),
      _temperatureDetail(),
      const SizedBox(
        height: 50,
      ),
      _extraWeatherDetail(),
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

// Temperature Detail
Widget _temperatureDetail() {
  return Container(
    padding: const EdgeInsetsDirectional.only(start: 22.0, top: 22),
    width: 260,
    child: Row(
      children: [
        const Icon(
          Icons.wb_sunny,
          size: 74,
          color: Colors.white,
        ),
        Container(
          padding: const EdgeInsetsDirectional.only(start: 20.0, top: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const <Widget>[
              Text(
                '14 °F', // ALT+0176 = °
                style: TextStyle(
                    fontSize: 54,
                    fontWeight: FontWeight.w100,
                    color: Colors.white),
              ),
              Text(
                'LIGHT SNOW',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

// Extra Weather Detail

Widget _extraWeatherDetail() {
  return Container(
    height: 120.0,
    width: 330.0,
    padding: const EdgeInsets.only(left: 2.0),
    child: ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 110.0,
      // shrinkWrap: true,
      children: [
        _extraWeatherDetailPlate(Icons.ac_unit, '5', 'km/hr'),
        _extraWeatherDetailPlate(Icons.ac_unit, '3', '%'),
        _extraWeatherDetailPlate(Icons.ac_unit, '20', '%'),
      ],
    ),
  );
}

// _extraWeatherDetail - Plate
Widget _extraWeatherDetailPlate(icon, String volume, String metr) {
  return SizedBox(
    height: 50.0,
    child: Column(
      children: [
        Icon(icon, size: 28.0, color: Colors.white),
        const SizedBox(
          height: 4.0,
        ),
        Text(
          volume,
          style: const TextStyle(
              color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w300),
        ),
        Text(
          metr,
          style: const TextStyle(
              color: Colors.white, fontSize: 12.0, letterSpacing: 0.2),
        ),
      ],
    ),
  );
}
