import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/authentication/screens/Home/HomeScreen.dart';
import 'package:t_store/features/authentication/screens/Home/store/TStore.dart';
import 'package:t_store/utils/constants/TColors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class BottomNavBarScreen extends StatelessWidget {
  const BottomNavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

;    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1): TColors.black.withOpacity(0.1),
          destinations: [
        NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.shop), label: "Store"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Wishlist"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),

      body:  Obx(( ) => controller. screens [controller.selectedIndex.value]),
    );
  }
}


class NavigationController extends GetxController{
  final Rx<int> selectedIndex= 0.obs;
  final screens =[const Homescreen(), StoreScreen(), Container(color: Colors.purple,),Container(color: Colors.orange,),Container(color: Colors.blue,), ];
}