import 'package:e_app/view/widget/custom_button.dart';
import 'package:flutter/material.dart';

List<String> changeImgag = [
  "assets/images/helios-300_2-removebg-preview.png",
  "assets/images/lap-removebg-preview.png",
  "assets/images/laptop9-removebg-preview.png",
  "assets/images/lap-removebg-preview.png"
];
String image = '';

class Prodect extends StatefulWidget {
  const Prodect({super.key});

  @override
  State<Prodect> createState() => _ProdectState();
}

class _ProdectState extends State<Prodect> {
  @override
  void initState() {
    image = changeImgag[0];
    super.initState();
  }

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
        child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 60),
                      BackIcon(),
                      const SizedBox(height: 10),
                      const Text(
                        'Predator Helios 300',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Type: Gaming Laptop',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 20),
                      CustemContener(changeImgag: image),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: changeImgag.length,
                        itemBuilder: (BuildContext context, int index) {
                          return InkWell(
                              onTap: () {
                                setState(() {
                                  image = changeImgag[index];
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    shadows: const [
                                      BoxShadow(
                                        color: Color(0x33000000),
                                        blurRadius: 15,
                                        offset: Offset(0, 2),
                                        spreadRadius: 2,
                                      )
                                    ],
                                  ),
                                  child: Image.asset(changeImgag[index]),
                                ),
                              ));
                        },
                      )),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Price',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '30,000 EGP',
                            style: TextStyle(
                              color: Color(0xFF464646),
                              fontSize: 18,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 250,
                        child: CustomButton(
                          onTap: () {},
                          title: "Add To Cart",
                        ),
                      ),
                    ],
                  ),
                ),
                const SliverToBoxAdapter(
                  child: Divider(
                    color: Colors.grey,
                    height: 80,
                    thickness: 1.2,
                    endIndent: 50,
                    indent: 40,
                  ),
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      const SizedBox(
                        width: 85,
                        child: Text(
                          'Overview',
                          style: TextStyle(
                            color: Color(0xFF464646),
                            fontSize: 18,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 8,
                        height: 8,
                        decoration: const ShapeDecoration(
                          gradient: LinearGradient(
                            begin: Alignment(0.77, -0.64),
                            end: Alignment(-0.77, 0.64),
                            colors: [Color(0xFF0062BD), Color(0x000062BD)],
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                const SliverToBoxAdapter(
                  child: OverViewText(),
                ),
              ],
            )),
      ),
    );
  }
}

class BackIcon extends StatelessWidget {
  const BackIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 15,
            offset: Offset(2, 2),
            spreadRadius: 3,
          )
        ],
      ),
      child: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
        ),
        color: Colors.grey,
      ),
    );
  }
}

///////////////////////////////////////////////////////
class OverViewText extends StatelessWidget {
  const OverViewText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 361,
      height: 392,
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. \nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur sodales ligula in libero. ',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      ),
    );
  }
}

////////////////////////////////////////////////////////////
class CustemContener extends StatelessWidget {
  const CustemContener({
    super.key,
    required this.changeImgag,
  });

  final String changeImgag;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      height: 300,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x33000000),
            blurRadius: 4,
            offset: Offset(0, 2),
            spreadRadius: 3,
          ),
        ],
      ),
      child: Image.asset(
        changeImgag,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
////////////////////////////////////////////////////

class CastomProdact extends StatelessWidget {
  const CastomProdact({super.key, required this.image, this.onTap});
  final String image;
  final void Function()? onTap;

//  final Function ?ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 100,
          height: 100,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            shadows: const [
              BoxShadow(
                color: Color(0x33000000),
                blurRadius: 15,
                offset: Offset(0, 2),
                spreadRadius: -5,
              ),
            ],
          ),
          child: Image.asset(image, fit: BoxFit.contain),
        ),
      ),
    );
  }
}
