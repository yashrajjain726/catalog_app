import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/home_widgets/catalog_image.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  const CatalogItem({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Hero(
              tag: Key(catalog.id.toString()),
              child: CatalogImage(image: catalog.image)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                catalog.name.text.lg.color(MyTheme.textColor).bold.make(),
                catalog.desc.text
                    .color(MyTheme.textColor)
                    .caption(context)
                    .make(),
                Expanded(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "\$${catalog.price}"
                          .text
                          .color(MyTheme.textColor)
                          .xl
                          .bold
                          .make(),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              MyTheme.secondaryColor,
                            ),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(4.0),
                            ),
                            shape: MaterialStateProperty.all(StadiumBorder())),
                        onPressed: () {},
                        child: "Add to Cart".text.make(),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    )).rounded.color(MyTheme.primaryColor).square(140).make().py16();
  }
}
