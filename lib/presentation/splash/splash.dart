import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/assets_manager.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/color_manager.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  // Used to show splash screen for 2 seconds and then navigate to onboarding screen
  Timer? _timer;

  // used to initialize timer and moving to next screen
  _startDelay() {
    _timer = Timer(Duration(seconds: 2), _goNext());
  }

  _goNext() {
    // navigate to onboarding screen
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  // @override
  // void initState() {
  //   super.initState();
  //   _startDelay();
  // }
  //
  // @override
  // void dispose() {
  //   // cancel timer when screen is finished
  //   _timer!.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: SafeArea(
        child: Center(
          child: Image(
            image: AssetImage(ImageAssets.splashLogo,),
          ),
        ),
      ),
    );
  }
}
