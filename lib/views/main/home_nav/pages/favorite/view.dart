import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:suits/core/design/my_appbar.dart';

import '../../../../../core/design/app_image.dart';
part 'components/categories.dart';
part 'components/products.dart';
class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(text: 'My Wishlist'),
      body: Column(
        children: [
          Categories(),
          Products(),

        ],
      ),
    );
  }
}
