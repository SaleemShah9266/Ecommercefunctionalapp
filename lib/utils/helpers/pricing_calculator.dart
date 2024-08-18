import 'package:flutter/cupertino.dart';

class TPricingCalculator {

  ///--- Calculate price based on tax and shipping
  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;

    double shippingCost = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  /// --- Calculate shipping cost
  static double calculateShippingCost(double productPrice, String location) {
    double shippingCost = getShippingCost(location);
    return double.parse(shippingCost.toStringAsFixed(2));
  }

  /// --- Calculate tax
  static double calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location); // Fixed the variable name
    double taxAmount = productPrice * taxRate;
    return double.parse(taxAmount.toStringAsFixed(2));
  }

  static double getShippingCost(String location) {
    return 5.00; // Example shipping cost, can be customized per location
  }

  static double getTaxRateForLocation(String location) {
    // Example tax rate, customize based on the location
    return 0.07; // Example: 7% tax rate
  }
}
