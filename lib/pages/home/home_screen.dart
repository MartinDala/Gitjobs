import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_jobs/pages/home/widgets/custom_appbar.dart';

import 'widgets/custom_categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = '/home-screen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CustomAppBar(),
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              "Nossass vagas recentes...",
              style: TextStyle(fontSize: 17),
            ),
          ),
          CustomCategories(
            categoryname: "Flutter",
            categorylogo: "assets/icons/flutter_icon.png",
            onPress: () {
              Get.toNamed("/jobs-screen");
            },
          ),
          CustomCategories(
              categoryname: "Front-end",
              categorylogo: "assets/icons/frontend_icon.png",
              onPress: () {}),
          CustomCategories(
              categoryname: "Back-end",
              categorylogo: "assets/icons/backend_icon.png",
              onPress: () {}),
          CustomCategories(
              categoryname: "Android",
              categorylogo: "assets/icons/android_icon.png",
              onPress: () {}),
          CustomCategories(
              categoryname: "UI - UX",
              categorylogo: "assets/icons/ux_icon.png",
              onPress: () {}),
          CustomCategories(
              categoryname: "Geral",
              categorylogo: "assets/icons/jobs_icon.png",
              onPress: () {}),
        ],
      ),
    );
  }
}
