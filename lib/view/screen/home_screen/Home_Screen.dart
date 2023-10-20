import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_app/core/constant/image.dart';
import 'package:e_app/core/constant/route.dart';
import 'package:e_app/core/helper/responsive.dart';
import 'package:e_app/view/screen/bottom_navigation_bar/notfication.dart';
import 'package:e_app/view/screen/home_screen/widgets/Catogry.dart';
import 'package:e_app/view/screen/home_screen/widgets/CatogryListViwe.dart';
import 'package:e_app/view/screen/home_screen/widgets/CotogeryListViwe2.dart';
import 'package:e_app/view/screen/home_screen/widgets/CustemAllprodects.dart';
import 'package:e_app/view/screen/home_screen/widgets/TextItemListViwe.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List catogry = const [
    Category(imege: kAcerP1),
    Category(imege: kAcerP2),
  ];

  List catogryProdact = const [
    CustemAllprodects(image: kAll, text: 'All'),
    CustemAllprodects(image: kAerLogo, text: 'Acer'),
    CustemAllprodects(image: kRazerLogo, text: 'Razer'),
    CustemAllprodects(image: kAppleLogo, text: 'Appl'),
  ];
  List<IconData> iconList = const [
    Icons.login,
    Icons.favorite,
    Icons.notifications_on_outlined,
    Icons.settings,
  ];
  int _bottomNavIndex = 1;
  bool isFavorite = false;
  bool Clak = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xD80062BD), Color(0x000062BD)],
          ),
        ),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: SizeBoxeVirtcal(value: 5),
            ),
            const SliverToBoxAdapter(
              child: TextItemListViwe(),
            ),
            SliverToBoxAdapter(
              child: CatogeryListViwe(catogry: catogry),
            ),
            SliverToBoxAdapter(
              child: CotogeryListViwe2(catogryProdact: catogryProdact),
            ),
            const SliverToBoxAdapter(
              child: SizeBoxeVirtcal(value: 2),
            ),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(Icons.home),
        onPressed: () {
          setState(() {
            Clak = false;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
          icons: iconList,
          elevation: 100,
          inactiveColor: Colors.grey,
          activeColor: Colors.blue,
          activeIndex: Clak == false ? -1 : _bottomNavIndex,
          gapLocation: GapLocation.center,
          notchSmoothness: NotchSmoothness.softEdge,
          height: 64,
          iconSize: 28,
          leftCornerRadius: 24,
          rightCornerRadius: 24,
          onTap: (index) {
            setState(() => _bottomNavIndex = index);

            Clak = true;
            if (_bottomNavIndex == 0) {
            } else if (_bottomNavIndex == 1) {
            } else if (_bottomNavIndex == 2) {
              return Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const NotificationPage();
                },
              ));
            } else if (_bottomNavIndex == 3) {
              Scaffold.of(context).openDrawer();

              //     Navigator.push(context, MaterialPageRoute(
              //   builder: (context) {
              //     return const DrawerCastem();
              //   },
              // ));
            }
          }

          //other params
          ),
    );
  }
}

class LaptopItem extends StatefulWidget {
  const LaptopItem({
    super.key,
  });

  @override
  State<LaptopItem> createState() => _LaptopItemState();
}

class _LaptopItemState extends State<LaptopItem> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 239,
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, kProduct);
        },
        child: Container(
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x3F000000),
                blurRadius: 7,
                offset: Offset(2, 2),
                spreadRadius: 5,
              ),
            ],
          ),
          child: Column(children: [
            Stack(
              children: [
                Container(
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 4,
                        offset: Offset(1, 1),
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Image.asset(
                    kMacbookApple,
                    width: 150,
                  ),
                ),
                Positioned(
                  left: 119,
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    icon: Icon(
                      Icons.favorite,
                      color: isFavorite ? Colors.red : Colors.white,
                      shadows: const [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 8,
                          offset: Offset(0, 6),
                          spreadRadius: 30,
                        ),
                      ],
                      size: 35,
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Razer',
                    style: TextStyle(
                      color: Color(0xFF0062BD),
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const SizeBoxeVirtcal(value: 0.8),
                  const Text(
                    'Razer Blade Stealth 13',
                    style: TextStyle(
                      color: Color(0xFF464646),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  const SizeBoxeVirtcal(value: .6),
                  Row(
                    children: [
                      const Text(
                        '32,000 EGP',
                        style: TextStyle(
                          color: Color(0xFF464646),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: const ShapeDecoration(
                          gradient: LinearGradient(
                            end: Alignment(0.80, 0.99),
                            begin: Alignment(-0.77, 0.40),
                            colors: [Color(0xFF0062BD), Color(0x000062BD)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20),
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
//Ayman git add .|
