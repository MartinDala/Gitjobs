import 'package:flutter/material.dart';

class CustomCategories extends StatelessWidget {
  final String? categoryname;
  final String? categorylogo;
  final GestureTapCallback? onPress;
  const CustomCategories(
      {Key? key,
      @required this.categoryname,
      @required this.categorylogo,
      this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Center(
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: const Color.fromARGB(248, 152, 248, 218)),
          child: GestureDetector(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        Image.asset(categorylogo.toString()),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            categoryname.toString(),
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: onPress),
        ),
      ),
    );
  }
}
