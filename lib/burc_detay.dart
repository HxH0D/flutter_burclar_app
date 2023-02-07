import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_burclar_app/model/burc.dart';
// palette generator paketi import
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  // secilen burc verilerini almak için değişken oluşturuldu
  final Burc secilenBurc;

  //BurcDetay widgeti kullanılırken secilen burc verilerinin gönderilmesi için requrired kullanıldı

  const BurcDetay({super.key, required this.secilenBurc});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  //Rengii değiştirdiğimiz de kullanabilmek için rengi değişkene atıyoruz
  Color appbatColor = Colors.transparent;
  late PaletteGenerator _generator;

  //widget ler deki buildler  1 den fazla defa çalışıyor olabilir bundan dolayı
  //initState kullanıyoruz ki widget çalışınca initstate bir defa çalışsın ve sonra buil istediği kadar çalışsın
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      appBarRenginibul();
    });
  }

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
            backgroundColor: appbatColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
              centerTitle: true,
              background: Image.asset(
                "images/" + widget.secilenBurc.burcBuyukResim,
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
                  widget.secilenBurc.burcDetayi,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // PaletGenarator islemi 1 2 saniye sürecek bir işlem olduğundan async ve await kullanıyoruz
  void appBarRenginibul() async {
    _generator = await PaletteGenerator.fromImageProvider(
      AssetImage("images/" + widget.secilenBurc.burcBuyukResim),
    );
    appbatColor = _generator.dominantColor!.color;
    //buildin tekrar çalışması ve değişkenlerin değişmesi için setState kullanıyoruz
    setState(() {});
  }
}
