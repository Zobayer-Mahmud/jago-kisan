import 'package:get/get.dart';

import '../modules/FarmingCard/bindings/farming_card_binding.dart';
import '../modules/FarmingCard/views/farming_card_view.dart';
import '../modules/FarmingDetails/bindings/farming_details_binding.dart';
import '../modules/FarmingDetails/views/farming_details_view.dart';
import '../modules/ForgetPassword/bindings/forget_password_binding.dart';
import '../modules/ForgetPassword/views/forget_password_view.dart';
import '../modules/Home/bindings/home_binding.dart';
import '../modules/Home/views/home_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/SearchView/bindings/search_view_binding.dart';
import '../modules/SearchView/views/search_view_view.dart';
import '../modules/SignUp/bindings/sign_up_binding.dart';
import '../modules/SignUp/views/sign_up_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => const SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.FARMING_DETAILS,
      page: () => const FarmingDetailsView(),
      binding: FarmingDetailsBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_VIEW,
      page: () => const SearchViewView(),
      binding: SearchViewBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FARMING_CARD,
      page: () => const FarmingCardView(),
      binding: FarmingCardBinding(),
    ),
    GetPage(
      name: _Paths.FORGET_PASSWORD,
      page: () => const ForgetPasswordView(),
      binding: ForgetPasswordBinding(),
    ),
  ];
}
