import 'package:flutter/material.dart';
import 'package:flutter_burclar_app/burc_detay.dart';
import 'package:flutter_burclar_app/burc_listesi.dart';
import 'package:flutter_burclar_app/model/burc.dart';

class RouteGenerator {
  static Route<dynamic>? routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(
          // burc_listesi.dart da ki BurcListesi widgeti
          builder: (context) => BurcListesi(),
        );
      case "/burcDetay":
        // Arguments yoluyla secilen burc verisini yolluyoruz gelen verinin as burc olduğunu belirtiyoruz
        final secilen = settings.arguments as Burc;
        return MaterialPageRoute(
          builder: (context) => BurcDetay(secilenBurc: secilen),
        );
    }
  }
}
