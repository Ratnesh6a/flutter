import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ratn_e/modals/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    // to arrange item in list tile and switch tile
    return ListTile(
      onTap: () {
        print("${item.name} pressed");
      },
      leading: Image.network(item.image),
      title: Text(item.name),
      subtitle: Text(item.desc),
      trailing: Text("\$${item.price}"),
    );
  }
}
