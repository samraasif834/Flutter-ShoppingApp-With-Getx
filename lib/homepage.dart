import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:shoppingapp/controllers/productcontroller.dart';
import 'package:shoppingapp/models/product.dart';
import 'package:shoppingapp/views/product_tile.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [Icon(Icons.shopping_cart, color: Colors.black)],
      ),
      body: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                      child: Text(
                    'Shopping App',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                    ),
                  )),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.view_list_rounded)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.grid_view)),
                ],
              )),
          Expanded(
            child: Obx(
              () => StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: productController.productList.length,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return ProductTile(productController.productList[index]);
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
            ),
          )
        ],
      ),
    );
  }
}
