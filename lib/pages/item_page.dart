import 'package:flutter/material.dart';
import 'package:nav_rute/models/item.dart';
import 'package:share/share.dart';

class itemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Item Details", style: TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(bottom: 8.0)),
            Image.network(
              itemArgs.img,
              fit: BoxFit.cover,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 8.0)),
            Text(
              "${itemArgs.name}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 4.0)),
            Text("Rp.${itemArgs.price}", style: const TextStyle(fontSize: 14)),
            const Padding(padding: EdgeInsets.only(top: 8.0, bottom: 4.0)),
            const Text(
              "Description",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text("${itemArgs.desc}", style: const TextStyle(fontSize: 14)),
            const Padding(padding: EdgeInsets.only(top: 10.0, bottom: 4.0)),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(52)),
              onPressed: () {
                final urlPreview = itemArgs.img;
                Share.share('Check out this link:\n\n$urlPreview');
              },
              child: const Text(
                'Share',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
