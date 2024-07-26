import 'package:flutter/material.dart';

class HomeData extends StatefulWidget {
  final Key? key;
  String? id;
  HomeData({this.key,this.id}) : super(key: key);

  @override
  State<HomeData> createState() => _HomeDataState();
}

class _HomeDataState extends State<HomeData> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("Home Data ${widget.id}"))
          ],
        ),
      ),
    );
  }
}
