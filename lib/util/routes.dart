import 'package:coopertransc/screens/auth.dart';
import 'package:coopertransc/screens/loading_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() =>
    {'/': (context) => LoadScreen(), '/auth': (context) => AuthScreen()};
