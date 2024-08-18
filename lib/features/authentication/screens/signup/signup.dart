import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/login/widgets/Tdivider.dart';
import 'package:t_store/features/authentication/screens/login/widgets/Tfooter.dart';
import 'package:t_store/features/authentication/screens/signup/widgets/signupForm.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///title

            Text(TTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwSections,),
            
            ///forms
            SignupForm(),
            ///Divider
            SizedBox(height: TSizes.spaceBtwSections,),

            TDivider(dividerText: TTexts.orSignInWith.capitalize!),

            /// social buttons
                    SizedBox(height: TSizes.spaceBtwSections,),
            const TFooter()
          ],
        ),
        ),

      ),
    );
  }
}


