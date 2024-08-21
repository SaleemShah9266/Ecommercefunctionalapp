import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Homecontroller extends GetxController{
  static Homecontroller get instance => Get.find();

  final carousalCurrentIndex = 0.obs;
  void updatePageIndicator(index){

    carousalCurrentIndex.value = index;
  }
}