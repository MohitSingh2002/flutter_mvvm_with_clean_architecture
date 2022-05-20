import 'package:flutter/material.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/font_manager.dart';

// get text style for general use
TextStyle _getTextStyle({
  required double fontSize,
  required FontWeight fontWeight,
  required String fontFamily,
  required Color color
}) {
  return TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: fontFamily,
    color: color,
  );
}

// bold style
TextStyle getBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.bold,
      fontFamily: FontConstants.fontFamily,
      color: color);
}

// semiBold style
TextStyle getSemiBoldStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.semiBold,
      fontFamily: FontConstants.fontFamily,
      color: color);
}

// medium style
TextStyle getMediumStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.medium,
      fontFamily: FontConstants.fontFamily,
      color: color);
}

// light style
TextStyle getLightStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.light,
      fontFamily: FontConstants.fontFamily,
      color: color);
}

// regular style
TextStyle getRegularStyle({double fontSize = FontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize: fontSize,
      fontWeight: FontWeightManager.regular,
      fontFamily: FontConstants.fontFamily,
      color: color);
}
