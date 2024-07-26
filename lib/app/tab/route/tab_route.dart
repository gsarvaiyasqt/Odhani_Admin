import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/routes/route_config.dart';
import '../../home/route/home_route.dart';
import '../../profile/route/profile_route.dart';
import '../../setting/route/setting_route.dart';
import '../screen/tab_screen.dart';

class TabRoute {

  static String tabName = "home";

  // =====================================================================

  static ShellRoute mainTabRouter = ShellRoute(
    navigatorKey: navigationKey,
    builder: (context, state, child) {
      print("main ${state.uri}");
      return MainTabScreen(
        context: context,
        child: child,
      );
    },
    routes: [
      HomeRoute.homeGoRoute,
      SettingRoute.settingGoRouter,
      ProfileRoute.profileGoRouter,
    ],
  );

  // =====================================================================

  static goToTabPage(BuildContext context){
    RouteConfig.goNamed(context: context, name: tabName);
  }

}