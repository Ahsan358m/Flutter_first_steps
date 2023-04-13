import 'dart:ffi';

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
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    final double version = 3.0;
    final int days = 456;
    final String name = 'Flutter $version';
    final dummyList = List.generate(5, (index) => CatalogModel.items[index]);

    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: dummyList[index],
            );
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
