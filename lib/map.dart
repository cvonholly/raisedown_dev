import 'package:flutter/material.dart';
import 'src/search_example.dart';
import 'src/simple_example_hook.dart';
import 'src/chat.dart';
import 'src/recipes.dart';
import 'src/profile.dart';

//import 'src/adv_home/home_example.dart';
import 'src/home/home_example.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // if (kIsWeb) {
  //   runApp(WebApp());
  // } else {
  //   await dotenv.load(fileName: ".env");
  //    runApp(MyApp());
  // }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        "/home": (ctx) => MainExample(),
        "/simple": (ctx) => SimpleExample(),
        "/second": (ctx) => Scaffold(
              body: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(ctx, "/home");
                  },
                  child: Text("another page"),
                ),
              ),
            ),
        "/picker-result": (ctx) => LocationAppExample(),
        "/search": (ctx) => SearchPage(),
        "/chat": (ctx) => ChatPage(),
        "/recipes": (ctx) => RecipePage(),
        "/profile": (ctx) => ProfilePage(),
      },
    );
  }
}