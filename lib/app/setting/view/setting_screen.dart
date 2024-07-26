import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:odhnai_web_admin/app/setting/route/setting_route.dart';


class SettingsScreen extends StatefulWidget {
  final Key? key;
  final String? name;

  SettingsScreen({ this.key,this.name}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Setting ${widget.name ?? "-"}"),

              OutlinedButton(
                  onPressed: (){
                    SettingRoute.goToSettingDataPage(context: context);
                  },
                  child:Text("Hello Text")
              ),
            ],
          ),
        ));
  }
}