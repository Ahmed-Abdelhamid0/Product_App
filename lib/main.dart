import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:product_app/details.dart';
import 'package:product_app/firebase_options.dart';
import 'package:product_app/home.dart';
import 'package:product_app/login.dart';
import 'package:product_app/model/cart.dart';
import 'package:provider/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>SelectedProduct(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login' : (context)=>LoginScreen(),
          'home' : (context)=> Home(),
          'details' : (context)=>DetailsViewState(),
        },
      ),
    );
  }
}


