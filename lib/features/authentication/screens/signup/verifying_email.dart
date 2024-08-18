import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:t_store/app.dart';
import 'package:t_store/common/widgets/success_screen/success_Screen.dart';
import 'package:t_store/features/authentication/screens/login/logIn.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class VerifyingEmailScreen extends StatelessWidget {
  const VerifyingEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(() => LoginScreen()), icon: Icon(CupertinoIcons.clear),),
        ],
      ),
      body:  SingleChildScrollView(
        /// padding to give all side space equal
        child: Padding(padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [

            /// image
            Image(image: AssetImage(TImages.deliveredEmailIllustration,),width: THelperFunctions.screenWidth() * 0.6, ),
            const SizedBox(height: TSizes.spaceBtwSections,),


            /// Title & SubTitle
            Text(TTexts.confirmEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),
            Text("Saluu1212@gmail.com", style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwItems,),

            Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center,),
            const SizedBox(height: TSizes.spaceBtwSections,),

            /// Button

            SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => SuccessScreen(
              image: TImages.staticSuccessIllustration,
              title: TTexts.yourAccountCreatedTitle,
              subTitle: TTexts.changeYourPasswordSubTitle,
              onPressed: ()=> Get.to(()=> LoginScreen()),)),
              child: const Text(TTexts.tContinue),),),
            const SizedBox(height: TSizes.spaceBtwItems,),
            SizedBox(width: double.infinity, child: TextButton(onPressed: (){}, child: const Text(TTexts.resendEmail),),),











          ],

        ),
        ),
      ),


    );
  }
}
