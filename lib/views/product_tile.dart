import 'package:flutter/material.dart';
import 'package:shoppingapp/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
children: [
  Container(
    height: 100,
    width: double.infinity,
    clipBehavior: Clip.antiAlias,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
    ),
  )
],
          )
        ],
      ),
      ),
    );
  }
}
