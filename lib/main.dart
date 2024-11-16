import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'before_navigation.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
        GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id : (context) => HomeScreen(),
      //   BeforeNavigationScreen.id : (context) => BeforeNavigationScreen()
      //   // LoginScreen.id : (context) => LoginScreen(),
      //   // RegistrationScreen.id : (context) => RegistrationScreen(),
      //   // ChatScreen.id : (context) => ChatScreen(),
      // },
    );
  }
}
