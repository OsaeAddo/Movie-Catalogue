import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_catalogue/layout.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  runApp(const TheMovieCatalogue());
}

class TheMovieCatalogue extends StatelessWidget {
  const TheMovieCatalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "The Movie Catalogue",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const Scaffold(
        body: AppLayout(),
      ),
    );
  }
}
