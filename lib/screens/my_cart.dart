import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_prov_app/model/item.dart';
import 'package:simple_prov_app/providers/cart_notifier.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Cart')),
      body: _buildList(),
    );
  }

  _buildList() {
    return Consumer<CartNotifier>(
      builder: (BuildContext context, cart, Widget child) {
        if (cart.items.isEmpty) {
          return Center(child: Text('You have nothing in your cart!'));
        }
        return ListView.builder(
          itemCount: cart.items.length,
          itemBuilder: (BuildContext context, int index) {
            Item item = cart.items[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: item.color,
              ),
              title: Text(item.name),
            );
          },
        );
      },
    );
  }
}
