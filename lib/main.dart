import 'package:canteen_food_ordering_app/screens/adminHome.dart';
import 'package:canteen_food_ordering_app/screens/landingPage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:canteen_food_ordering_app/screens/landingPage.dart';
import 'package:provider/provider.dart';
//import 'package:canteen_food_ordering_app/screens/adminHome.dart';
import 'notifiers/authNotifier.dart';

// void main() {
//   runApp(MyApp());
// }
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => AuthNotifier(),
      ),
      // ChangeNotifierProvider(
      //   create: (_) => FoodNotifier(),
      // ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campus Bites',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        primaryColor: Color.fromRGBO(255, 63, 111, 1),
      ),
      home: Scaffold(
        body: LandingPage(),
        //body: AdminHomePage(),
      ),
    );
  }
}
