import 'package:firebase_core/firebase_core.dart';
import 'package:flash_chat/screen/chat_screen.dart';
import 'package:flash_chat/screen/login_screen.dart';
import 'package:flash_chat/screen/registration_screen.dart';
import 'package:flash_chat/screen/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// Error deprecated see this link :
// "https://stackoverflow.com/questions/65862666/flutterfirebasecoreplugin-java-uses-or-overrides-a-deprecated-api/65873997"
// for documentation go to link :
// "https://firebase.flutter.dev/docs/installation/android/#enabling-multidex"
// The Most Important Configuration Firebase
// 1. Add Package-package
// 2. Configuration main.dart (use pushNamed)
// 3. Create file-file
// 4. Add STF in each of file
// 5. Create UI Welcome Screen
// 6. Create UI Login + Logic firebase
// 7. Create UI Register + Logic firebase
// 8. Create constant.dart and add code
// 9. Create UI Chat Screen + Logic Firebase
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen()
      },
    );
  }
}
