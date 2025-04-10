import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yt_ecommerce_admin_panel/routes/routes.dart';

class TRoutMiddleware extends GetMiddleware {
  //overide redirect method
  @override
  RouteSettings? redirect(String? route) {
    final isAuthenticated = true;
    return isAuthenticated
        ? null
        : const RouteSettings(name: TRoutes.login);
  }
}
