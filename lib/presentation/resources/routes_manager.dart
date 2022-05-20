// class used to manage routes for moving throughout the application
import 'package:flutter/material.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/forgot_password/forgot_password.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/login/login.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/main/main_view.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/onboarding/onboarding.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/register/register.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/resources/strings_manager.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/splash/splash.dart';
import 'package:flutter_mvvm_with_clean_architecture/presentation/store_details/store_details.dart';

class Routes {

  static const String splashRoute = '/';
  static const String onBoardingRoute = '/onBoarding';
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgotPasswordRoute = '/forgotPassword';
  static const String mainRoute = '/main';
  static const String storeDetailsRoute = '/storeDetails';

}

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => OnBoardingView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routes.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      default:
        return undefinedRoute();
    }
  }

  static Route<dynamic> undefinedRoute() {
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.noRouteFound,),
      ),
      body: SafeArea(
        child: Center(
          child: Text(AppStrings.noRouteFound,),
        ),
      ),
    ));
  }

}
