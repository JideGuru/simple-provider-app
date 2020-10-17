import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_prov_app/common/constants.dart';
import 'package:simple_prov_app/model/item.dart';
import 'package:simple_prov_app/providers/cart_notifier.dart';
import 'package:simple_prov_app/screens/my_cart.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag),
            onPressed: () => pushCartPage(context),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          Item item = items[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: item.color,
            ),
            title: Text(item.name),
            trailing: FlatButton(
              child: context.watch<CartNotifier>().items.contains(item)
                  ? Icon(Icons.check)
                  : Text('Add'),
              onPressed: context.read<CartNotifier>().items.contains(item)
                  ? null
                  : () {
                      context.read<CartNotifier>().addItem(item);
                    },
            ),
          );
        },
      ),
    );
  }

  pushCartPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return MyCart();
        },
      ),
    );
  }
}
