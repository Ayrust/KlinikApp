import 'package:flutter/material.dart';
import '../model/poli.dart';
import '../ui/poli_detail_page.dart';

class PoliItemPage extends StatelessWidget {
  final Poli poli;
  PoliItemPage ({super.key, required this.poli});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card (
        child: ListTile (
          title: Text ("${poli.namaPoli}"),
        ),
      ),
      onTap: () {
        Navigator.push(
            context, 
            MaterialPageRoute(
                builder: (context) => PoliDetailPage(poli: poli))
        );
      },
    );
  }
}
