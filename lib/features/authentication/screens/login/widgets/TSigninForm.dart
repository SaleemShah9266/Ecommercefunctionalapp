import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:t_store/features/authentication/screens/signup/signup.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/constants/text_strings.dart';

class TSiginForm extends StatelessWidget {
  const TSiginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            ///email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: TTexts.email),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields,
            ),

            ///password

            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: TTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwInputFields / 2,
            ),

            /// remember me and forget password

            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text(TTexts.rememberMe),
                SizedBox(width: 76,),
                TextButton(


                  onPressed: () => Get.to(() => ForgetPasswordScreen()),
                  child: const Text(TTexts.forgetPassword),
                ),
              ],
            ),

            ///SignIn Button

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(

                onPressed: () {},
                child: const Text(TTexts.signIn, ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),

            /// create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),


                child: const Text(TTexts.createAccount),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

