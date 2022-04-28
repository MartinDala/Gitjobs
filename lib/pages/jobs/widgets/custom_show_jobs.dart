import 'package:flutter/material.dart';

class CustomShowJob extends StatelessWidget {
  final String? jobtitle;
  final String? jobdescription;
  final String? jobdate;
  final GestureTapCallback? onPress;
  const CustomShowJob(
      {Key? key,
      this.onPress,
      @required this.jobtitle,
      @required this.jobdescription,
      @required this.jobdate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
            child: Container(
          height: 110,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1),
              color: const Color.fromARGB(248, 184, 255, 232)),
          child: GestureDetector(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobtitle.toString(),
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Expanded(
                      child: Text(
                        jobdescription.toString(),
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      jobdate.toString(),
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 13,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              onTap: onPress),
        )));
  }
}
