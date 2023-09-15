import 'package:contacts_app/login_screen.dart';
import 'package:contacts_app/pallete.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:contacts_app/firebase_options.dart';

// ...
void main()async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp( 
    const ProviderScope(
      child: MyApp(),
      ),
    );
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Contacts',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),     
    home: const LoginScreen()
    );
  }
} 