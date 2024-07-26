import 'package:flutter/material.dart';
import 'package:odhnai_web_admin/app/home/route/home_route.dart';

// class HomeScreen extends StatefulWidget {
//   final Key? key;
//    HomeScreen(this.key) : super(key: key);
//   @override
//   State<HomeScreen> createState() => _HomeScreenState( );
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Home"),
//
//               OutlinedButton(onPressed: (){
//                 HomeRoute.goToHomeDataPage(context: context,queryParameters:{'id': '10'});
//               },
//                   child: const Text("Home Data get")
//               ),
//             ],
//           ),
//         ));
//   }
// }

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Home"),

          OutlinedButton(
              onPressed: () {
                HomeRoute.goToHomeDataPage(context: context, queryParameters: {'id': '10'});
              },
              child: const Text("Home Data get")),
        ],
      ),
    ));
  }
}