import 'package:flutter/material.dart';
import 'package:quotes_app/utils/route_utils.dart';
import 'package:quotes_app/views/screens/detailsPage.dart';
import 'package:quotes_app/views/screens/homePage.dart';

void main()
{
  runApp(
    const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true
      ),

      initialRoute: MyRoute.HomePage,
      routes: {
        MyRoute.HomePage : (context) => const HomePage(),
        MyRoute.DetailPage : (context) => const DetailPage(),
      },
    );
  }
}
