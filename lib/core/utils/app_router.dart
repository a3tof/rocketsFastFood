import 'package:go_router/go_router.dart';
import 'package:rockets/features/home/presentation/views/home_view.dart';
import 'package:rockets/features/login/presentation/views/login_view.dart';
import 'package:rockets/features/meals/presentation/views/meal_view.dart';
import 'package:rockets/features/offers/presentation/views/offer_view.dart';
import 'package:rockets/features/products/presentation/views/custom_product_view.dart';
import 'package:rockets/features/register/presentation/views/register_view.dart';
import 'package:rockets/core/widgets/custom_drawer.dart';
import 'package:rockets/features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kLogin = '/login';
  static const kRegisterView = '/registerView';
  static const kOfferView = '/offerView';
  static const kProductView = '/productView';
  static const kDrawer = '/sidemenu';
  static const kMealView = '/mealview';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kLogin,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kRegisterView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: kOfferView,
        builder: (context, state) => const OfferView(),
      ),
      GoRoute(
        path: kProductView,
        builder: (context, state) => const CustomProductView(),
      ),
      GoRoute(
        path: kDrawer,
        builder: (context, state) => const CustomDrawer(),
      ),
      GoRoute(
        path: kMealView,
        builder: (context, state) => const MealView(),
      ),
    ],
  );
}
