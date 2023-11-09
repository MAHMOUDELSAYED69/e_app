import 'package:e_app/core/constant/color.dart';
import 'package:e_app/data/model/product_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/constant/image.dart';
import '../../../../core/constant/route.dart';
import '../../../../core/helper/responsive.dart';
import '../../../../data/service/login_service.dart';

class LaptopItem extends StatefulWidget {
  const LaptopItem({
    super.key,
  });

  @override
  State<LaptopItem> createState() => _LaptopItemState();
}

class _LaptopItemState extends State<LaptopItem> {
  List<Products> helpModel = [];
  @override
  void initState() {
    super.initState();
    Service.init();
    getProduct();
  }

  Future<void> getProduct() async {
    helpModel = await Service.getProduct();
    setState(() {});
  }

  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: helpModel.length,
          itemBuilder: (context, index) {
            return SizedBox(
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, kProduct);
                },
                child: Container(
                  decoration: ShapeDecoration(
                    color: kWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color.fromARGB(25, 47, 46, 46),
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
                            color: kWhite,
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
                          child: Image.network(
                            helpModel[index].image!,
                            scale: 1,
                          ),
                        ),
                        Positioned(
                          left: SizeConfig.defaultSize! * 11,
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
                    //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            helpModel[index].name!,
                            style: const TextStyle(
                              color: Color(0xFF0062BD),
                              fontSize: 18,
                              fontFamily: 'Inter',
                              height: 0,
                            ),
                          ),
                          const SizeVertical(value: 0.8),
                          Text(
                            helpModel[index].description!,
                            style: const TextStyle(
                              color: Color(0xFF464646),
                              fontSize: 12,
                              fontFamily: 'Inter',
                              height: 0,
                            ),
                          ),
                          const SizeVertical(value: .6),
                          Row(
                            children: [
                              Text(
                                helpModel[index].price!,
                                style: const TextStyle(
                                  color: Color(0xFF464646),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
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
                                    colors: [
                                      Color(0xFF0062BD),
                                      Color(0x000062BD)
                                    ],
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
          }),
    );
  }
}
