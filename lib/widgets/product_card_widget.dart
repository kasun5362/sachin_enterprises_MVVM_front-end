import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sachin_enterprises/features/product/model/product_model.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';
import 'package:sachin_enterprises/utils/text_constants.dart';
import 'package:sachin_enterprises/widgets/cache_network_widget.dart';

class ProductCard extends StatefulWidget {
  final ProductModelData product;

  const ProductCard({super.key, required this.product});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavorite = false;

  void onFavoritePressed() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: CacheNetworkWidget(
          imageUrl: widget.product.image ?? '',
          fit: BoxFit.cover,
        ),
      ),

      footer: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GridTileBar(
          backgroundColor: const Color.fromARGB(137, 53, 52, 52),
          title: Text(
            widget.product.name ?? '',
            style: AppTextStyles.bodyMedium.copyWith(
              color: Colors.white,
              letterSpacing: 1,
              wordSpacing: 2,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            '\LKR ${widget.product.price?.toStringAsFixed(2) ?? '0.00'}',
            style: AppTextStyles.bodyLarge.copyWith(
              color: const Color.fromARGB(255, 239, 243, 7),
              fontWeight: FontWeight.w500,
            ),
          ),
          trailing: IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? ColorConstants.primaryColor : Colors.white,
            ),
            onPressed: onFavoritePressed,
          ),
        ),
      ),
    );
  }
}
