import 'dart:async';
import 'package:flutter/material.dart';

import 'inbox_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Gmail",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: GmailSplashScreen(),
    );
  }
}

class GmailSplashScreen extends StatefulWidget {
  const GmailSplashScreen({super.key});

  @override
  State<GmailSplashScreen> createState() => _GmailSplashScreenState();
}

class _GmailSplashScreenState extends State<GmailSplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) =>  InboxScreen(),
        ),
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final cardWidth = size.width;
    final cardHeight = size.height;

    return Scaffold(
      backgroundColor: const Color(0xffF5F5F5),
      body: Container(
        width: cardWidth,
        height: cardHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(28),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 30,
              offset: const Offset(0, 12),
            ),
          ],
        ),
        child: Column(
          children: [
            /// Center Logo
            Expanded(
              child: Center(
                child: Image.asset(
                  "assets/gmail.gif",
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            /// Bottom Text
            Padding(
              padding: const EdgeInsets.only(bottom: 92),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Google",
                      style: TextStyle(
                        color: Color(0xff4A4A4A),
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.5,
                      ),
                    ),

                    TextSpan(
                      text: " Workspace",
                      style: TextStyle(
                        color: Color(0xff7B7B7B),
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
