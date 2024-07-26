import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:odhnai_web_admin/app/profile/route/profile_route.dart';


class ProfileScreen extends StatefulWidget {
  final Key? key;

  ProfileScreen({this.key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Profile"),

              OutlinedButton(onPressed: (){
                ProfileRoute.goToProfileDataPage(context: context);
              }, child: Text("Profile Data Click")),
            ],
          ),
        )
    );
  }
}