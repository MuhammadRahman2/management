import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:office_task_ui/detail_page.dart';
import 'package:office_task_ui/home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: '/', page: ()=> HomePage()),
        GetPage(name: '/kk', page: () => DetailPage()),
      ],
      home: HomePage(),
    );

  }
}
