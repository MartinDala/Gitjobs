import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_jobs/pages/jobs/widgets/custom_show_jobs.dart';
import 'package:git_jobs/util/colors.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({Key? key}) : super(key: key);

  static String routeName = '/jobs-screen';
  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Vagas de Flutter",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 70,
        backgroundColor: primaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 30,
              ))
        ],
      ),
      body: ListView(children: [
        CustomShowJob(
          jobtitle: "Flutterr",
          jobdescription:
              "Buscamos pessoas que sejam apaixonadas por construir aplicações distribuídas e de alta performansssssssssssce .",
          jobdate: "2020/02/20",
          onPress: () {
            Get.toNamed("/details-screen");
          },
        ),
        CustomShowJob(
          jobtitle: "Flutterr",
          jobdescription:
              "Buscamos pessoas que sejam apaixonadas por construir aplicações distribuídas e de alta performansssssssssssce .",
          jobdate: "2020/02/20",
          onPress: () {},
        ),
        CustomShowJob(
          jobtitle: "Flutterr",
          jobdescription:
              "Buscamos pessoas que sejam apaixonadas por construir aplicações distribuídas e de alta performansssssssssssce .",
          jobdate: "2020/02/20",
          onPress: () {},
        ),
        CustomShowJob(
          jobtitle: "Flutterr",
          jobdescription:
              "Buscamos pessoas que sejam apaixonadas por construir aplicações distribuídas e de alta performansssssssssssce .",
          jobdate: "2020/02/20",
          onPress: () {},
        ),
      ]),
    );
  }
}
