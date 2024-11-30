import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'services/router.dart';
import 'services/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ).then((_) async {
    await dotenv.load(fileName: '.env');
  }).catchError((error) {
    if (kDebugMode) {
      print('Error initializing Firebase: $error');
    }
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      routerConfig: AppRouter.router,
      title: 'My App',
      restorationScopeId: 'my_app',
    );
  }
}