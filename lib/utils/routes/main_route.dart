// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:odhnai_web_admin/app/tab/screen/tab_screen.dart';
//
// GlobalKey<NavigatorState>? navigationKey;
//
// class MainRoutes {
//
//   static GoRouter goRouterMainRouter = GoRouter(
//     initialLocation: "/home",
//     routes: [
//       ShellRoute(
//         navigatorKey: navigationKey,
//         builder: (context, state, child) {
//           print("main ${state.uri}");
//           return MainTabScreen(context: context,child: child);
//         },
//         routes: [
//           HomeRoute.homeRoute,
//           SettingRoute.settingRouter,
//           ProfileRoute.profileRouter,
//         ],
//       ),
//     ],
//   );
//
//
//   static goNamed({required BuildContext context,required String name, Map<String, String>? pathParameters, Map<String, dynamic>? queryParameters, Object? extra}){
//     context.goNamed(name,
//         queryParameters: queryParameters ?? <String, dynamic>{},
//         pathParameters: pathParameters ?? <String, String>{},
//         extra:extra
//     );
//   }
//
// }