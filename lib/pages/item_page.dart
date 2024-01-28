import 'package:flutter/material.dart';
import 'package:nav_rute/models/item.dart';

class itemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Item Details", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(bottom: 8.0)),
            Image.network(
              itemArgs.img,
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.only(bottom: 8.0)),
            Text(
              "${itemArgs.name}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.only(bottom: 4.0)),
            Text("Rp.${itemArgs.price}", style: const TextStyle(fontSize: 14)),
            Padding(padding: EdgeInsets.only(top: 8.0, bottom: 4.0)),
            const Text(
              "Description",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
