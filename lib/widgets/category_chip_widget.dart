import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sachin_enterprises/features/category/model/category_model.dart';
import 'package:sachin_enterprises/features/product/view_model/product_view_model.dart';
import 'package:sachin_enterprises/utils/color_constants.dart';

class CategoryChipWidget extends StatefulWidget {
  final List<CategoryModelData> categoris;
  const CategoryChipWidget({super.key, required this.categoris});

  @override
  State<CategoryChipWidget> createState() => _CategoryChipWidgetState();
}

class _CategoryChipWidgetState extends State<CategoryChipWidget> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoris.length,
        itemBuilder: (context, index) {
          return Container(
            width: 100, // Fixed width for all chips
            margin: const EdgeInsets.symmetric(horizontal: 4),
            child: ChoiceChip(
              showCheckmark: false,
              selectedColor: ColorConstants.primaryLightColor,
              backgroundColor: Colors.grey[200],
              padding: const EdgeInsets.all(0), // Remove default padding
              labelPadding: const EdgeInsets.symmetric(
                horizontal: 4,
              ), // Control label padding
              selected: selectedIndex == index,
              label: Container(
                width: 90, // Slightly less than container width
                height: 32, // Fixed height for vertical centering
                alignment:
                    Alignment.center, // Center both vertically and horizontally
                child: Text(
                  widget.categoris[index].name ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.center, // Center text within container
                  style: TextStyle(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
              onSelected: (value) {
                final name = widget.categoris[index].name ?? '';

                setState(() {
                  selectedIndex = index;
                  Provider.of<ProductViewModel>(
                    listen: false,
                    context,
                  ).filterProductsByCategory(name == "all" ? "all" : name);
                });
              },
            ),
          );
        },
      ),
    );
  }
}
