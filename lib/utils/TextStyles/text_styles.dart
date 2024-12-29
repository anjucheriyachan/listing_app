import 'package:flutter/material.dart';

class TextStyles {
  static TextStyle productListTitleStyle =
      const TextStyle(fontSize: 14, fontWeight: FontWeight.w600);

  static TextStyle productListDescStyle = TextStyle(
      fontSize: 8,
      fontWeight: FontWeight.w400,
      color: Colors.black.withOpacity(0.8));

  static TextStyle productListPriceAndCategoryStyle =
      const TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static TextStyle productListMainTitleStyle =
      const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);

  static TextStyle showAllStyle = const TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.blueAccent,
      fontStyle: FontStyle.italic);

  static TextStyle detailPriceStyle = const TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
    color: Colors.blueAccent,
  );
  static TextStyle productDescGrey = const TextStyle(
      fontSize: 12, fontWeight: FontWeight.w400, color: Colors.grey);
}
