import 'package:flutter/material.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TVerticalImageText.dart';
import 'package:t_store/utils/constants/image_strings.dart';
class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index){
          return TVerticalImageText(image: TImages.shoeIcon, title: 'Shoes', onTap: (){},);
        },

      ),
    );
  }
}
