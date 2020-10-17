import 'package:flutter/material.dart';
import 'package:simple_prov_app/model/item.dart';

// Generate the list of items
List<Item> items = List.generate(
  25,
  (index) => Item(
    index,
    'Item ${index + 1}',
    Colors.primaries[index % Colors.primaries.length],
  ),
);
