import 'package:flutter/material.dart';
import 'package:gori_top/home_screen/view/home_screen.dart';
import 'package:gori_top/vtoroy_screen/veiw/second_screen.dart';

final Map<String, WidgetBuilder> routes = {
  '/': (context) => const MyHomePage (title: 'Горы',),
  '/second': (context) => const SecondScreen(title: 'Твоя гора',),
};