import 'package:flutter/material.dart';
import 'package:odhnai_web_admin/utils/routes/route_config.dart';

class OdhaniWebAdminApp extends StatelessWidget {
  const OdhaniWebAdminApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouteConfig.goRouterMainRouter,
    );
  }
}