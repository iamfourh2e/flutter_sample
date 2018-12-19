import 'package:h2e_music/inherited/app_state_container.dart';
import 'package:h2e_music/ui/home/home.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    AppStateContainer(
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildMusicTheme(),
      home: Home(),
    );
  }
}


ThemeData _buildMusicTheme() {
  final ThemeData base = ThemeData.dark();

  return base.copyWith(
    
  );
}