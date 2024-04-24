import 'package:flutter/cupertino.dart';
import 'package:re_exam/screens/cart/cart_screen.dart';
import 'package:re_exam/screens/detail/detail_screen.dart';
import 'package:re_exam/screens/home/home_screen.dart';
import 'package:re_exam/screens/splash/splash_screen.dart';

Map<String,WidgetBuilder> routes =
{
  "/" :(context) => const SplashScreen(),
  "home" :(context) => const HomeScreen(),
  "details" :(context) => const DetailScreen(),
  "cart" :(context) => const CartScreen(),
};