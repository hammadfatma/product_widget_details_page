import 'package:flutter/material.dart';
import 'package:product_widget_details_page/widgets/button_Icon_widget.dart';
import 'package:product_widget_details_page/widgets/icon_badge_widget.dart';
import 'package:product_widget_details_page/widgets/tab_bar_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new_outlined,
              color: Color(0xffff6969), size: 18),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Faux Sued Ankle Boots',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff515c6f),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '\$49.99',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff515c6f),
                    ),
                  ),
                  Container(
                    width: 42,
                    height: 19,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffff6969),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Color(0xffffffff),
                        ),
                        Text(
                          '4.9',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        actions: [
          IconBadgeWidget(
            txt: '7',
            con: Icons.shopping_cart_outlined,
            fl: false,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              AnimatedSmoothIndicator(
                activeIndex: 1,
                count: 3,
                effect: WormEffect(
                  dotHeight: 5,
                  dotWidth: 5,
                  radius: 3,
                  dotColor: Color(0xff727c8e).withOpacity(0.200),
                  activeDotColor: Color(0xff727c8e),
                ),
              ),
              Image.asset('assets/boots.png'),
              SizedBox(height: 100),
              TabBarWidget(),
              Row(
                children: [
                  ButtonIconWidget(
                    txt: 'SHARE THIS',
                    con: Icons.arrow_upward_outlined,
                    clcon: Color(0xffffffff),
                    clcont: Color(0xff727c8e),
                    cltxt: Color(0xff727c8e),
                    backcl: Color(0xffffffff),
                  ),
                  Spacer(),
                  ButtonIconWidget(
                    txt: 'ADD TO CART',
                    con: Icons.arrow_forward_ios_outlined,
                    clcon: Color(0xffff6969),
                    clcont: Color(0xffffffff),
                    cltxt: Color(0xffffffff),
                    backcl: Color(0xffff6969),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
