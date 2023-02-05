import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BurcListesi extends StatelessWidget {
  const BurcListesi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç Listesi"),
      ),
      body: Center(child: Text("Burçlar buraya gelecek.")),
    );
  }
}
