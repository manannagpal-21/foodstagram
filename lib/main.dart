import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:foodstagram/responsive/mobile_screen_layout.dart';
import 'package:foodstagram/responsive/responsive_screen_layout.dart';
import 'package:foodstagram/responsive/web_screen_layout.dart';
import 'package:foodstagram/screens/login_screen.dart';
import 'package:foodstagram/screens/signup_screen.dart';
import 'package:foodstagram/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: 'AIzaSyCaZhMWPup0MV2OspHBYUDR0SyQ7Bjsdc4', 
        appId: '1:616385926235:web:a651364ce274167c671b7e', 
        messagingSenderId: '616385926235', 
        projectId: 'foodstagram-e2fd6',
        storageBucket: "foodstagram-e2fd6.appspot.com",
        ),
    );
  } else {
    await Firebase.initializeApp();
}
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodstagram',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      //home: const ResponsiveLayout(
      //  mobileScreenLayout: MobileScreenLayout() ,
      //  webScreenLayout: WebScreenLayout() ,
      //  ),
    home: LoginScreen() ,);
  }
}

