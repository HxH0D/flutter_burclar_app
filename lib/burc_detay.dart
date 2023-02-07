import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_burclar_app/model/burc.dart';

class BurcDetay extends StatelessWidget {
  // secilen burc verilerini almak için değişken oluşturuldu
  final Burc secilenBurc;

  //BurcDetay widgeti kullanılırken secilen burc verilerinin gönderilmesi için requrired kullanıldı

  const BurcDetay({super.key, required Burc this.secilenBurc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Kaydırılabilir app bar yapmak için kullanılan widget
      body: CustomScrollView(
        slivers: [
          // kaydırılabilen app bar
          SliverAppBar(
            // ekranin ilk açılıştaki yükseklik
            expandedHeight: 250,
            pinned: true,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(secilenBurc.burcAdi + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                "images/" + secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(8),
              child: SingleChildScrollView(
                child: Text(
                  secilenBurc.burcDetayi,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
