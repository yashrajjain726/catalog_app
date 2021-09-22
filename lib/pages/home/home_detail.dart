import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:catalog_app/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);
  final Item catalog;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$${catalog.price}".text.xl3.bold.make(),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                MyTheme.secondaryColor,
              ),
              shape: MaterialStateProperty.all(
                StadiumBorder(),
              ),
            ),
            onPressed: () {},
            child: "Add to Cart".text.make(),
          )
        ],
      ),
      backgroundColor: MyTheme.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
              child: VxArc(
                arcType: VxArcType.CONVEY,
                height: 30.0,
                edge: VxEdge.TOP,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 50.0,
                      horizontal: 10.0,
                    ),
                    child: Column(
                      children: [
                        catalog.name.text.bold.xl4.make(),
                        catalog.desc.text.xl.make(),
                        "The grim this nameless and the that streaming this bust seraphim, chamber yore cried sculptured floor. Before door him only a floor rare but, placid bust muttered forgotten flown soul of, this perched so ominous followed nepenthe more the store, the his of stepped oh, the whom stately startled nothing so, dreaming being the the or, bust only out nevermore on whom within thy. Of countenance floor raven thy and, grew at what and theeby."
                            .text
                            .caption(context)
                            .make()
                            .p16()
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
