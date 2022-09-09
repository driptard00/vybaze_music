import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vybaze_music/routes/app_route_names.dart';
import 'package:vybaze_music/routes/app_routes.dart';

var initialRoute = splash_creen;

void main() {
  runApp(
    const MyApp(),     
  );
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "VyBaze",
      theme: ThemeData(
        fontFamily: "DMSANS",
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: initialRoute,
      getPages: getPages
    );
  }

} 
