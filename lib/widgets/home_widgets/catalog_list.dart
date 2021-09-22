import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/pages/home/home_detail.dart';
import 'package:catalog_app/widgets/home_widgets/catalog_item.dart';
import 'package:flutter/material.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeDetailPage(catalog: catalog),
                  ),
                ),
            child: CatalogItem(catalog: catalog));
      },
      itemCount: CatalogModel.items!.length,
    );
  }
}
