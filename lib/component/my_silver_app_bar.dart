import 'package:flutter/material.dart';
import 'package:grume_food_delivery/Themes/screen_size.dart';

class MySilverAppBar extends StatelessWidget {
  final Widget child;
  final Widget title;
  const MySilverAppBar({super.key, required this.child, required this.title});

  @override
  Widget build(BuildContext context) {
    ScreenSize init;
    return SliverAppBar(
      title: const Text('Grume Food Delivery '),
      expandedHeight: ScreenSize.responsiveText(100),
      collapsedHeight: ScreenSize.responsiveText(30),
      floating: false,
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
      ],
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      foregroundColor: Theme.of(context).colorScheme.secondary,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: child,
        ),
        title: title,
        centerTitle: true,
        expandedTitleScale: 1,
        titlePadding: EdgeInsets.only(left: 0, right: 0, top: 0),
      ),
    );
  }
}
