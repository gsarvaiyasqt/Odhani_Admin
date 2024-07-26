import '../view/setting_data.dart';
import '../view/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../utils/routes/route_config.dart';


class SettingRoute {
  static const String settingName = "setting";
  static const String settingDataName = "settingData";

  // =====================================================================


  static GoRoute settingGoRouter =  GoRoute(
    name: settingName,
    path: "/setting",
    builder: (context, state) => SettingsScreen(),
    routes: [
      GoRoute(
        name: settingDataName,
        path: "settingData",
        builder: (context, state) => SettingData(),
      ),
      //...........
    ],
  );

  // =====================================================================

  static goToSettingPage({required BuildContext context}){
    RouteConfig.goNamed(context: context, name: settingName);
  }

  static goToSettingDataPage({required BuildContext context}){
    RouteConfig.goNamed(context: context, name: settingDataName);
  }


}