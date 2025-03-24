import 'package:flutter/material.dart';
import 'package:messenger_ui/utils/color_constant/colorconstant.dart';

class DiscoverBrandWidget extends StatelessWidget {
  const DiscoverBrandWidget(
      {super.key, required this.image, required this.brandName});
  final String image;
  final String brandName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: white,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(height: 5),
        Text(
          brandName,
        ),
      ],
    );
  }
}
