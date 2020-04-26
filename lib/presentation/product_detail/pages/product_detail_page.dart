/// lib/presentation/product_detail/pages/product_detail_page.dart
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  static Route<dynamic> route() => MaterialPageRoute(
        builder: (context) => ProductDetailPage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Detail"),
      ),
      body: Center(
        child: Text("Hello, Product!"),
      ),
    );
  }
}
