import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Center(
        child: Container(
          height: 50.0,
          width: 300.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 255, 255, 255)),
          child: GestureDetector(
              child: const Center(
                child: Text(
                  "Começar",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: Color.fromARGB(255, 8, 7, 7),
                      fontWeight: FontWeight.bold),
                ),
              ),
              onTap: () {
                Get.toNamed('/login-screen');
              }),
        ),
      ),
    );
  }
}
