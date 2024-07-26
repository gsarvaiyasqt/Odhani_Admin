import 'package:flutter/material.dart';

class SettingData extends StatefulWidget {
  const SettingData({super.key});

  @override
  State<SettingData> createState() => _SettingDataState();
}

class _SettingDataState extends State<SettingData> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
          Text("Setting Data")
        ],
      ),
    );
  }
}
