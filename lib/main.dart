import 'package:estateportal/providers/videos.dart';
import 'package:estateportal/screens/auth/forgotpassword.dart';
import 'package:estateportal/screens/auth/login.dart';
import 'package:estateportal/screens/auth/otp.dart';
import 'package:estateportal/screens/auth/signup.dart';
import 'package:estateportal/screens/homescreen.dart';
import 'package:estateportal/screens/startscreen.dart';
import 'package:estateportal/screens/videoplayer/feed.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_) => FeedVideosProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.grey,
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              iconColor: Colors.white,
              foregroundColor: Colors.black,
              backgroundColor: Colors.transparent,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              backgroundColor: Colors.black,
              textStyle: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          textTheme: TextTheme(
            titleLarge: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            titleMedium: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            titleSmall: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyLarge: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
            ),
            bodyMedium: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            bodySmall: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
            headlineMedium: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          buttonTheme: const ButtonThemeData(
            buttonColor: Colors.black,
            textTheme: ButtonTextTheme.primary,
          ),
          colorScheme: const ColorScheme.light(
            primary: Colors.black,
            secondary: Colors.greenAccent,
          ),
        ),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(
          brightness: Brightness.light,
        ),
        home: VideoScreen(),
      ),
    );
  }
}

