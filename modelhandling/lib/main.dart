
import 'package:flutter/material.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

 void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: "https://gasywwjzqqrkxjkicyuw.supabase.co",
    anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imdhc3l3d2p6cXFya3hqa2ljeXV3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzExNzc0MTcsImV4cCI6MjA4Njc1MzQxN30.DAud6wf3Whqvgyi5g0Uj_zTzTt_O5MQTVS_oi0Hdv-k",
  );

  runApp(const MyApp());
}

 

class MyApp extends StatelessWidget {

  const MyApp({super.key});


  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'Student Info Manager',

      debugShowCheckedModeBanner: false,

      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),

        useMaterial3: true,

      ),

      home: const LoginPage(),

    );

  }

}