import 'package:flutter/material.dart';
import 'package:s_green/screens/DeviceManager.dart';
import 'package:s_green/screens/EditProfileScreen.dart';
import 'package:s_green/screens/ListDeviceScreen.dart';
import 'package:s_green/screens/HomeScreen.dart';
import 'package:s_green/screens/LoginScreen.dart';
import 'package:s_green/screens/NotificationScreen.dart';
import 'package:s_green/screens/ProfileScreen.dart';
import 'package:s_green/screens/RegisterScreen.dart';
import 'package:s_green/screens/WelcomeScreen.dart';
import 'package:s_green/screens/SettingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome':(context) => const WelcomeScreen(),
        '/login':(context) => const LoginScreen(),
        '/register':(context) => const RegisterScreen(),
        '/home':(context) => const HomeScreen(),
        '/profile':(context) => const ProfileScreen(),
        '/setting':(context) => const SettingScreen(),
        '/list_device':(context) => const ListOfDeviceScreen(),
        '/notifications':(context) => const Notifications(),
        '/edit_profile':(context) => const EditProfile(),
        '/device_manager':(context) => DeviceManager(),
      },
    );
  }
}