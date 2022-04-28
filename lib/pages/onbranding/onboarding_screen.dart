import 'package:flutter/material.dart';
import 'package:git_jobs/pages/login/login_screen.dart';
import 'package:git_jobs/pages/onbranding/widgets/custom_getstartbutton.dart';
import 'package:git_jobs/util/colors.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  static String routeName = '/onboarding-screen';

  const OnBoardingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'Sem emprego? \n Ainda há \n esperanças.',
              body:
                  'Seus dias de procura de nova \n oportunidade serão facilitados.',
              image: buildImage('assets/images/boy.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Encontre as \n melhores vagas \n de T.I  aqui.',
              body:
                  'Aqui voce encontrará vagas todos dias, independente da sua área na T.I',
              image: buildImage('assets/images/girls.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'A nossa fonte \n é o gatinho preto que todo dev ama',
              body:
                  'A principio nossas vagas têm como fonte as issues das comunidades de devs no github',
              image: buildImage('assets/logos/githublogo.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'Então... \n Mbora começar?',
              body: 'Espero que encontres o melhor job da vida.',
              footer: const GetStartButton(),
              image: buildImage('assets/images/cherry-success.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: const Text('Ler',
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.white)),
          onDone: () => goToHome(context),
          showSkipButton: true,
          skip: const Text(
            'Voltar',
            style: TextStyle(color: Colors.white),
          ),
          onSkip: () => Navigator.pop(context),
          next: const Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
          dotsDecorator: getDotDecoration(),
          //  onChange: (index) => print('Page $index selected'),
          globalBackgroundColor: primaryColor,
          //skipFlex: 0,
          nextFlex: 0,

          // isProgressTap: false,
          // isProgress: false,
          // showNextButton: false,
          // freeze: true,
          animationDuration: 1000,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginScreen()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: const Color(0xFFBDBDBD),
        //activeColor: Colors.orange,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
        bodyTextStyle: TextStyle(fontSize: 17),
        imagePadding: EdgeInsets.all(24),
        pageColor: primaryColor,
      );
}
