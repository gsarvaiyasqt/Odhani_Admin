
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:odhnai_web_admin/app/home/route/home_route.dart';

import '../../../utils/routes/main_route.dart';
import '../../profile/route/profile_route.dart';
import '../../setting/route/setting_route.dart';

class MainTabScreen extends StatefulWidget {
  final Widget? child;
  BuildContext? context;
  MainTabScreen({this.child,this.context});
  @override
  _MainTabScreenState createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        HomeRoute.goToHomePage(context: context);
        break;
      case 1:
        SettingRoute.goToSettingPage(context: context);
        break;
      case 2:
        ProfileRoute.goToProfilePage(context: context);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final route = GoRouter.of(context).routerDelegate.currentConfiguration.uri.pathSegments[0];

    if (route.toString() == HomeRoute.homeName) {
      _selectedIndex = 0;
    } else if (route.toString() == SettingRoute.settingName) {
      _selectedIndex = 1;
    } else if (route.toString() == ProfileRoute.profileName) {
      _selectedIndex = 2;
    } else {
      _selectedIndex = 0;
    }


    return Scaffold(
      bottomNavigationBar: MediaQuery.of(context).size.width < 640

          ? BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      )

          : null ,

      body: Row(
        children: <Widget>[
          if (MediaQuery.of(context).size.width >= 640)

            NavigationRail(
              selectedIndex: _selectedIndex,
              onDestinationSelected: _onItemTapped,
              destinations: const <NavigationRailDestination>[
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  selectedIcon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.settings),
                  selectedIcon: Icon(Icons.settings),
                  label: Text('Settings'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.person),
                  selectedIcon: Icon(Icons.person),
                  label: Text('Profile'),
                ),
              ],
            ),

          const VerticalDivider(thickness: 1, width: 1),

          Expanded(
              child: widget.child ?? Container()
          ),
        ],
      ),
    );
  }
}
