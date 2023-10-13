// ignore_for_file: prefer_const_constructors
import 'package:fca/features/splash/splash_screen.dart';
import 'package:fca/providers/user_provider.dart';
import 'package:fca/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString('x-auth-token') ?? "";

  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: MyApp(
        token: token,
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required String token});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => generateRoute(settings),
      home: SplashScreen(token: '',),
    );
  }
}
