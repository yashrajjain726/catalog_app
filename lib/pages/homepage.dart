// ignore_for_file: prefer_const_constructors

import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
    var catalogJSON = await rootBundle.loadString('assets/files/catalog.json');
    var decodedData = jsonDecode(catalogJSON);
    var productData = decodedData["products"];
    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(15, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('PortFolieX'),
        ),
        drawer: MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            },
            itemCount: dummyList.length,
          ),
        ));
  }
}
