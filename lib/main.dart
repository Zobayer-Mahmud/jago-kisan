import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jago_kisan/app/routes/app_pages.dart';
import 'package:jago_kisan/utilities/initial_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff31F920)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialBinding: InitialBindings(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    );
  }
}
