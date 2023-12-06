import 'package:flutter/material.dart';
import 'package:product_widget_details_page/widgets/icon_badge_widget.dart';
import 'package:product_widget_details_page/widgets/list_view_product.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F6F8),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconBadgeWidget(
            txt: '5',
            con: Icons.maps_ugc_outlined,
            fl: true,
          ),
          IconBadgeWidget(
            txt: '10',
            con: Icons.notifications_none_outlined,
            fl: false,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(child: ListViewProduct()),
              ],
            )
          ],
        ),
      ),
    );
  }
}
