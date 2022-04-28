import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_jobs/util/colors.dart';

// ignore: camel_case_types
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = '/splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

// ignore: camel_case_types
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Get.toNamed('/onboarding-screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 0,
              ),
              Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Image.asset("assets/logos/logo.png")),
              const Center(
                child: CircularProgressIndicator(
                  backgroundColor: Color.fromARGB(255, 255, 237, 237),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "GITJOBS",
                  style: TextStyle(
                      color: Color.fromARGB(255, 64, 61, 61),
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
