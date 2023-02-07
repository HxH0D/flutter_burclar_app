import 'package:flutter/material.dart';
import 'package:flutter_burclar_app/route_generator.dart';

import 'burc_listesi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      title: "Burçlar App",
      //route_generator.dart da RouteGenerator adlı klası oluşturduk ve yönlendirmeleri orda yaptık
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
