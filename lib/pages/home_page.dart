import 'package:flutter/material.dart';
import 'package:nav_rute/models/item.dart';

class homePage extends StatelessWidget {
  homePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(
      img:
          'https://images.ctfassets.net/yixw23k2v6vo/asset-22897/a5a2c626e015c169b08eab1af714b142/ThinkstockPhotos-467009529.jpg?fm=webp&q=50&w=1200&h=600&fit=thumb',
      name: 'Sugar',
      price: 5000,
      desc:
          'Sugar is a term that includes all sweet carbohydrates, although the term is most often used to describe sucrose or table sugar, a double sugar.',
    ),
    Item(
      img:
          'https://images.ctfassets.net/mrbo2ykgx5lt/31765/96cef0fd9648ca18ef1f2a43710df46c/frontiers-in-immunology-salt-cancer.jpg?&w=1056&fm=jpg',
      name: 'Salt',
      price: 2000,
      desc:
          'Salt is an ionic compound that can be formed by the neutralization reaction of an acid and a base.',
    ),
    Item(
      img:
          'https://www.maangchi.com/wp-content/uploads/2008/02/red-chili-pepper.jpg',
      name: 'Chili Pepper',
      price: 3000,
      desc:
          'Chili peppers are widely used in many cuisines as a spice to add "heat" to dishes.',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.shopping_basket),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text("Belanjain", style: TextStyle(color: Colors.white)),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                margin: const EdgeInsets.all(8),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(item.img),
                      const SizedBox(height: 8),
                      Text(item.name,
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 8),
                      Text(
                        "Rp.${item.price.toString()}",
                        textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
