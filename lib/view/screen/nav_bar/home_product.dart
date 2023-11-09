import 'package:flutter/material.dart';
import '../../../core/constant/color.dart';
import '../../../core/constant/image.dart';
import '../../../core/helper/responsive.dart';
import '../product_screen/product_custom_widget/product_card.dart';
import '../product_screen/product_custom_widget/Catogry.dart';
import '../product_screen/product_custom_widget/category_list_view.dart';
import '../product_screen/product_custom_widget/category_list_view_2.dart';
import '../product_screen/product_custom_widget/custom_all_product.dart';
import '../product_screen/product_custom_widget/search_bar.dart';

class HomeProduct extends StatelessWidget {
  HomeProduct({super.key});
  List catogry = const [
    Category(image: kAcerP1),
    Category(image: kAcerP2),
  ];
  List catogryProdact = const [
    CustemAllprodects(image: kAll, text: 'All'),
    CustemAllprodects(image: kAerLogo, text: 'Acer'),
    CustemAllprodects(image: kRazerLogo, text: 'Razer'),
    CustemAllprodects(image: kAppleLogo, text: 'Appl'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: kBackgroundScreen),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizeVertical(value: 5),
            ),
            const SliverToBoxAdapter(
              child: TextItemListview(),
            ),
            SliverToBoxAdapter(
              child: CatogeryListView(catogry: catogry),
            ),
            SliverToBoxAdapter(
              child: CotogeryListViwe2(catogryProdact: catogryProdact),
            ),
            const SliverToBoxAdapter(
              child: SizeVertical(value: 2),
            ),
            const SliverToBoxAdapter(child: Expanded(child: LaptopItem())),
            SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 0, // Horizontal spacing between items
                mainAxisSpacing: 30, // Vertical spacing between items
                childAspectRatio: 0.85,
              ),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: LaptopItem(),
                  ); // Replace with your item widget
                },
                childCount: 10, // Replace with the number of items you have
              ),
            ),
          ],
        ),
      ),
    );
  }
}
