import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_prov_app/providers/cart_notifier.dart';
import 'package:simple_prov_app/screens/home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (BuildContext context)=>CartNotifier(),
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }
}
