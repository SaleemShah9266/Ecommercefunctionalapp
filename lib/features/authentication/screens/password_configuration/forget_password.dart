import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/app.dart';
import 'package:t_store/features/authentication/screens/login/logIn.dart';
import 'package:t_store/features/authentication/screens/password_configuration/forget_password_reset.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            /// headings
            Text(TTexts.forgetPasswordTitle, style: Theme
                .of(context)
                .textTheme
                .headlineMedium,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            Text(TTexts.forgetPasswordSubTitle, style: Theme
                .of(context)
                .textTheme
                .labelMedium,),
            const SizedBox(height: TSizes.spaceBtwSections * 2,),


            /// Text Fields

            TextFormField(decoration: InputDecoration(labelText: TTexts.email,
                prefixIcon: Icon(Iconsax.direct_right)),),


            /// Submit Button
            SizedBox(height: TSizes.spaceBtwSections * 2,),

            SizedBox(width: double.infinity, child: ElevatedButton(
              onPressed: () => Get.off(() => ResetPasswordScreen()),
              child: Text(TTexts.submit),),)
          ],
        ),
      ),

    );
  }
}
