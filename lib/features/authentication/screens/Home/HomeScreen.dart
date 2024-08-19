import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/AppBar/AppBar.dart';
import 'package:t_store/common/AppBar/TCartCounter.dart';
import 'package:t_store/features/authentication/screens/Home/Custom_widgets_shapes/TPrimary_Heaader_Container.dart';

import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  ///---Appbar text
                  TAppBar(

                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(TTexts.homeAppBarTitle, style: Theme.of(context).textTheme.labelMedium!.apply(color: TColors.grey),),
                        Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white),)

                      ],
                    ),
                    ///---AppBar Icon bag and counter

                    action: [
                      TCartCounter( onPressed: (){}, iconColor: TColors.white,)

                      /// tomorrow
                    ],
                  ),
                ],

            ),)
          ],
        ),
      ),
    );
  }
}






