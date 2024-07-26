import 'package:flutter/material.dart';

import '../../../utils/routes/route_config.dart';
import '../view/profile_data.dart';
import '../view/profile_screen.dart';
import 'package:go_router/go_router.dart';


class ProfileRoute {

  static const String profileName = "profile";
  static const String profileDataName = "profileData";

  // =====================================================================

  static GoRoute profileGoRouter = GoRoute(
    name: profileName,
    path: "/profile",
    builder: (context, state) => ProfileScreen(),
    routes: [
      GoRoute(
        name: profileDataName,
        path: "profileData",
        builder: (context, state) => ProfileData(),
      ),
    ],
  );

  // =====================================================================

  static goToProfilePage({required BuildContext context}){
    RouteConfig.goNamed(context: context, name: profileName);
  }

  static goToProfileDataPage({required BuildContext context}){
    RouteConfig.goNamed(context: context, name: profileDataName,);
  }


}