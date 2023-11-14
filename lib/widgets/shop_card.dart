import 'package:flutter/material.dart';
import 'package:tukatuku/screens/shoplist_form.dart';
import 'package:tukatuku/screens/stuff_list.dart';

class Item {
  final String name;
  final IconData icon;
  final Color color;

  Item(this.name, this.icon, this.color);
}

class Stuff {
  final String name;
  final int amount;
  final String description;

  Stuff({
    required this.name,
    required this.amount,
    required this.description
  });
}

class ShopCard extends StatelessWidget {
  final Item item;

  const ShopCard(this.item, {super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: item.color,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
          if (item.name == "Tambah Item") {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ShopFormPage()));
          }
          if (item.name == "Lihat Item") {
            Navigator.push(context,
            MaterialPageRoute(builder: (context) => const StuffPage()));
          }
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}