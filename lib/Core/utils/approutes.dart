import 'package:bookly/Features/Splash/presentation/views/splashview.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/homeview.dart';
import 'package:bookly/Features/search/presentation/views/searchview.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  // GoRouter configuration
  static const KHomeView = '/HomeView';
  static const KSplashView = '/';
  static const KBooksDetailesView = '/BooksDetailesView';
  static const KSearchView = '/SearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: KSplashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: KHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: KBooksDetailesView,
        builder: (context, state) => const BooksDetailsView(),
      ),
      GoRoute(
        path: KSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
