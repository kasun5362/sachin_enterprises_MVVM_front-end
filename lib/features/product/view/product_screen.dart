import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sachin_enterprises/features/category/view_model/category_view_model.dart';
import 'package:sachin_enterprises/features/product/view_model/product_view_model.dart';
import 'package:sachin_enterprises/utils/image_constants.dart';
import 'package:sachin_enterprises/widgets/category_chip_widget.dart';
import 'package:sachin_enterprises/widgets/product_card_widget.dart';
import 'package:sachin_enterprises/widgets/search_bar_widget.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  void initState() {
    fetchProduct();
    fetchCategory();
    super.initState();
  }

  fetchProduct() async {
    final productViewModel = Provider.of<ProductViewModel>(
      context,
      listen: false,
    );
    productViewModel.fetchProducts();
  }

  fetchCategory() async {
    final categoryViewModel = Provider.of<CategoryViewModel>(
      listen: false,
      context,
    );
    categoryViewModel.fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    final productViewModel = Provider.of<ProductViewModel>(context);
    final categoryViewModel = Provider.of<CategoryViewModel>(context);
    final products = productViewModel.serachProducts;
    final categories = categoryViewModel.categories;

    return products.isEmpty
        ? Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.inventory_2_outlined, size: 80, color: Colors.grey),
                SizedBox(height: 16),
                Text(
                  "No products found",
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
          )
        : Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  width: double.infinity,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImageConstants.topBackground),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 50),
                      SearchBarWidget(
                        onChanged: (String value) {
                          productViewModel.searchProducts(value);
                        },
                      ),
                      CategoryChipWidget(categoris: categories),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: GridView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductCard(product: product);
                  },
                ),
              ),
            ],
          );
  }
}
