import 'package:flutter/material.dart';
import 'package:flutter_scooter_rent_app/history_rides_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HistoryRidesPage(),
    );
  }
}
