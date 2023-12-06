import 'package:flutter/cupertino.dart';
import 'package:product_widget_details_page/widgets/product_widget.dart';

import '../models/product_model.dart';

class ListViewProduct extends StatelessWidget {
  const ListViewProduct({super.key});
  final List<ProductModel> products = const [
    ProductModel(image: 'assets/shoes.png', name: 'Ankle Boots', price: '49.99'),
    ProductModel(image: 'assets/bag.png', name: 'Backpack', price: '20.58'),
    ProductModel(image: 'assets/scarf.png', name: 'Red Scarf', price: '11.00'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (context,index){
        return ProductWidget(product: products[index],);
      }),
    );
  }
}
