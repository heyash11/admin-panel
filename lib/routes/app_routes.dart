import 'package:get/get_navigation/get_navigation.dart';
import 'package:yt_ecommerce_admin_panel/app.dart';
import 'package:yt_ecommerce_admin_panel/common/widgets/responsive/screens/tablet_layout.dart';
import 'package:yt_ecommerce_admin_panel/routes/routes.dart';
import 'package:yt_ecommerce_admin_panel/routes/routes_middleware.dart';

class TAppRoute {
  static final List<GetPage> pages = [
    GetPage(
      name: TRoutes.responsiveDesignTutorial,
      page: () => ResponsiveDesignScreen(),
      // middlewares: [
      //   TRoutMiddleware(),
      // ],
      // transition: Transition.fadeIn,
      // transitionDuration: const Duration(milliseconds: 300),
    ),
  ];
}
