import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CategoryType {
  static final CategorynameColor shopping = CategorynameColor(
      bgcolor: CustomColor.yellow20,
      icon: "assets/icons/shopping-bag.svg",
      color: CustomColor.yellow100);
  static final CategorynameColor bill = CategorynameColor(
      bgcolor: CustomColor.violet20,
      icon: "assets/icons/recurring-bill.svg",
      color: CustomColor.violet100);
  static final CategorynameColor travel = CategorynameColor(
      bgcolor: CustomColor.light60,
      icon: "assets/icons/car.svg",
      color: Color(0xff004685));
  static final CategorynameColor food = CategorynameColor(
      bgcolor: CustomColor.red20,
      icon: "assets/icons/restaurant.svg", color: CustomColor.red100);
}

class CategorynameColor {
  final String icon;
  final Color color;
  final Color bgcolor;

  CategorynameColor({
    required this.icon,
    required this.color,
    required this.bgcolor,
  });
}
