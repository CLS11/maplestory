import 'package:flutter/material.dart';
import 'package:myapp/home_page.dart';

void main() {
  runApp(MapleStory());
}

class MapleStory extends StatelessWidget {
  const MapleStory({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
