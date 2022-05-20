import 'package:flutter/material.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/color_manager.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/font_manager.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/styles_manager.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/values_manager.dart';

ThemeData getApplicationTheme() {

  return ThemeData(
    // colors
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    primaryColorDark: ColorManager.darkPrimary,
    disabledColor: ColorManager.grey1,
    splashColor: ColorManager.primaryOpacity70,
    accentColor: ColorManager.grey,

    // card theme
    cardTheme: CardTheme(
      color: ColorManager.white,
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),

    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s4,
      shadowColor: ColorManager.primaryOpacity70,
      titleTextStyle: getRegularStyle(color: ColorManager.white, fontSize: FontSize.s16,),
    ),

    // button theme
    buttonTheme: ButtonThemeData(
      shape: StadiumBorder(),
      buttonColor: ColorManager.primary,
      disabledColor: ColorManager.grey1,
      splashColor: ColorManager.primaryOpacity70,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(color: ColorManager.white,),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    // text theme
    textTheme: TextTheme(
      headline1: getSemiBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
      subtitle1: getMediumStyle(color: ColorManager.lightGrey, fontSize: FontSize.s14),
      caption: getRegularStyle(color: ColorManager.grey1),
      bodyText1: getRegularStyle(color: ColorManager.grey),
    ),
  );

}
