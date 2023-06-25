import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:new_flutter/pages/splash_page.dart';
import 'package:new_flutter/routers/routers.dart';
import 'package:new_flutter/utils/sp_utils.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SpUtil.init();
  runApp(const ProviderScope(
    child: MyApp(),
  ));
  Routes.configureRoutes(Routes.router);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter项目",
      debugShowCheckedModeBanner: true,
      theme: ThemeData(primaryColor: Colors.white),
      home: const SplashPage(),
      onGenerateRoute: Routes.router.generator,
    );
  }
}
