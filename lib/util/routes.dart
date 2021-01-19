import 'dart:js';

import 'package:coopertransc/screens/auth.dart';
import 'package:coopertransc/screens/loading_screen.dart';
import 'package:coopertransc/screens/main_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() => {
      '/': (context) => LoadScreen(),
      '/main': (context) => MainScreen(),
      '/auth': (context) => AuthScreen()
    };
