import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "PortFolieX".text.bold.xl5.color(context.theme.primaryColor).make(),
        "Your Future Devices".text.color(context.theme.primaryColor).make(),
      ],
    );
  }
}
