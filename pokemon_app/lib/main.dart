import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokemon_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return ScreenUtilInit(
      //designSize: const Size(618, 1098),
      designSize: const Size(412,732),
      builder: (BuildContext context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Pokedex',
          theme: ThemeData.dark().copyWith(
            textTheme: GoogleFonts.lailaTextTheme()
          ),
          home: const HomePage()
        );
      }
    );

  
  }
}

