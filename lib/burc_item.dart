import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_burclar_app/model/burc.dart';

// her bir eleman için bir statles wight kodları
class BurcItem extends StatelessWidget {
  //listedeki burc türündeki elemanı almak için burc türünde eleman oluşturdum
  final Burc listelenenBurc;
  //BurcItem() widgetini kullanırken required listelenenBurc olarak veri istiyoruz
  const BurcItem({required this.listelenenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme; //main deki theme den
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(5),
      child: ListTile(
        leading: Image.asset(
          "images/${listelenenBurc.burcKucukResim}",
        ),
        title: Text(
          listelenenBurc.burcAdi,
          style: myTextStyle.titleLarge,
        ),
        subtitle: Text(
          listelenenBurc.burcTarihi,
          style: myTextStyle.labelLarge,
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.pink,
        ),
      ),
    );
  }
}
