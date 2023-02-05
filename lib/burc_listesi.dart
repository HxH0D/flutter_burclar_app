import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_burclar_app/data/strings.dart';

import 'model/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
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
    //boş liste oluşturuldu
    List<Burc> gecici = [];
    for (int i = 0; i < 12; i++) {
      // veriler data klasöründeki strings dosyasından çekildi ve değişkenlere atandı
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetayi = Strings.BURC_GENEL_OZELLIKLERI[i];

      //koc1.png değerini oluşturmak Koc --> koc --> koc1.png
      var burcKucukResim =
          "${Strings.BURC_ADLARI[i].toLowerCase()}${i + 1}.png";
      //koc_buyuk1.png değerini oluşturmak Koc --> koc --> koc_buyuk1.png
      var burcBuyukResim =
          "${Strings.BURC_ADLARI[i].toLowerCase()}_buyuk${i + 1}.png";

      // Burc adında oluşturduğumuz modeli kullanarak eklenecekBurc değişkenini oluşturduk
      Burc eklenecekBurc = Burc(
        // eklenecekBurc değişkenine çektiğimiz verileri atadık
        burcAdi,
        burcTarihi,
        burcDetayi,
        burcKucukResim,
        burcBuyukResim,
      );

      //eklenecekBurc değişkenini gecici adındaki listeye ekledik
      gecici.add(eklenecekBurc);
    }

    // cektiğimiz tüm verileri gecici listesine ekledikten sonra değişkeni methoda geri döndürdük
    return gecici;
  }
}
