import 'package:flutter/material.dart';
import 'package:dave_s_application3/presentation/buyer_homescreen_container_screen/buyer_homescreen_container_screen.dart';
import 'package:dave_s_application3/presentation/buyer_product_detail_screen/buyer_product_detail_screen.dart';
import 'package:dave_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String profilePage = '/profile_page';

  static const String buyerHomescreenPage = '/buyer_homescreen_page';

  static const String buyerHomescreenContainerScreen =
      '/buyer_homescreen_container_screen';

  static const String buyerProductDetailScreen = '/buyer_product_detail_screen';

  static const String buyerCartPage = '/buyer_cart_page';

  static const String buyerMessagePage = '/buyer_message_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        buyerHomescreenContainerScreen: BuyerHomescreenContainerScreen.builder,
        buyerProductDetailScreen: BuyerProductDetailScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: BuyerHomescreenContainerScreen.builder
      };
}
