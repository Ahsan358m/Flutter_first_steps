import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/drawer.dart';
import "package:riverpod_flutter_starter/models/catalog.dart";
import 'dart:convert';
import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedJson = jsonDecode(catalogJson);
    var productData = decodedJson['products'];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final double version = 3.0;
    final int days = 456;
    final String name = 'Flutter $version';
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return GridTile(
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.network(item.image),
                    ),
                    header: Container(
                      color: Colors.deepPurple,
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        item.name,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    footer: Container(
                      padding: EdgeInsets.all(12),
                      color: Colors.black,
                      child: Text(
                        "Rs.${item.price}",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: CatalogModel.items.length,
              )
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
