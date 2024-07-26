import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:odhnai_web_admin/app/tab/route/tab_route.dart';

GlobalKey<NavigatorState> navigationKey = GlobalKey<NavigatorState>();

class RouteConfig {

  static GoRouter goRouterMainRouter = GoRouter(
    initialLocation: "/home",
    routes: [
      TabRoute.mainTabRouter,
    ],
  );

  static goNamed({required BuildContext context,required String name, Map<String, String>? pathParameters, Map<String, dynamic>? queryParameters, Object? extra}){
    context.goNamed(name,
        queryParameters: queryParameters ?? <String, dynamic>{},
        pathParameters: pathParameters ?? <String, String>{},
        extra:extra
    );
  }
}