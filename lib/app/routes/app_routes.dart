import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:shopping_sample/app/modules/cart/cart_view.dart';

import '../../common_widgets/bottom_navigation_bar/bottom_navigation_view.dart';
import '../modules/login/login_view.dart';
import '../modules/register/register_view.dart';

class AppRoutes {
  static const String login = '/';
  static const String register = '/register';
  static const String bottomMain = '/bottomMain';
  static const String cart = '/cart';


  static List<GetPage> getPages = [
    GetPage(name: login, page: () => LoginView()),
    GetPage(name: register, page: () => RegisterView()),
    GetPage(name: bottomMain, page: () => BottomMainBar()),
    GetPage(name: cart, page: () => CartView()),

  ];
}
