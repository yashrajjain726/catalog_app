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
                catalog.name.text.lg
                    .color(context.theme.canvasColor)
                    .bold
                    .make(),
                catalog.desc.text
                    .color(context.theme.canvasColor)
                    .caption(context)
                    .make(),
                Expanded(
                  child: ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                    children: [
                      "\$${catalog.price}"
                          .text
                          .color(context.theme.canvasColor)
                          .xl
                          .bold
                          .make(),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              context.theme.primaryColor,
                            ),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(4.0),
                            ),
                            shape: MaterialStateProperty.all(StadiumBorder())),
                        onPressed: () {},
                        child: "Add to Cart"
                            .text
                            .color(context.theme.canvasColor)
                            .make(),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    )).rounded.color(context.theme.cardColor).square(140).make().py16();
  }
}
