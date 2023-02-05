import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_burclar_app/data/strings.dart';

import 'model/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    debugPrint(tumBurclar.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Listesi"),
      ),
      body: ListView(),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];
      var burcKucukResim =
          "${Strings.BURC_ADLARI[i].toLowerCase()}${i + 1}.png";
      var burcBuyukResim =
          "${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i + 1}.png";

      Burc eklenecekBurc = Burc(
        burcAdi,
        burcTarihi,
        burcDetayi,
        burcKucukResim,
        burcBuyukResim,
      );
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
