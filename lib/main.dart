import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'home_screen.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}
//DOCUMENTATION - RIVERPOD
//There are multiple typers of Providers in Riverpod
//1.Provider - Read Only
// final nameProvider = Provider((ref) {
//   return "Saravana kumar Provider";
// });
//2.StateProviers - Update Value from outside since Proviers is immutable (only for Int,double,Bool - Not complex values)
// final nameProvider = StateProvider<String?>((ref) {
//   return null;
// });
//3.StateNotifier & StateNotifierProvider

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Riverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
