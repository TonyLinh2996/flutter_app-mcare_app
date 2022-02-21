import 'package:flutter/material.dart';
import 'ui/configs/router/router_name.dart';
import 'ui/configs/router/routers.dart';

//---------------------------------------------------------------------------------------------------
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouterName.splashPage,
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
