import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

import 'main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the first page\n'
              'We are making on-boarding screens'
              '- made by choco',
          image: Image.asset('images/02.png'),
          decoration: getPageDecoration(Colors.orange),
        ),
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the second page\n'
              'Gooood Luck!',
          image: Image.asset('images/03.png'),
          decoration: getPageDecoration(Colors.green),
        ),
        PageViewModel(
          title: 'Welcome to my app',
          body: 'This is the third page\n'
              'I have nothing to say',
          image: Image.asset('images/01.png'),
          decoration:
              getPageDecoration(const Color.fromARGB(255, 100, 181, 246)),
        ),
      ],
      done: const Text('done'),
      onDone: () {
        //   Navigator.push(  //  done눌렀을 때, <-뒤로가기 화살표가 나온다.
        //       context, MaterialPageRoute(builder: (_) => const MyPage()));
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => const MyPage()));
      },
      next: const Icon(Icons.arrow_forward),
      // showSkipButton: true, // 맨마지막 페이지로 이동하기
      // skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
          color: Colors.cyan,
          size: const Size(15, 15),
          activeColor: Colors.red,
          activeSize: const Size(22, 15),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          )),
      curve: Curves.linearToEaseOut,
    );
  }

  PageDecoration getPageDecoration(Color pageColor) {
    return PageDecoration(
      titleTextStyle: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: const TextStyle(
        fontSize: 18,
        color: Color.fromARGB(255, 53, 34, 226),
      ),
      imagePadding: const EdgeInsets.only(top: 40),
      pageColor: pageColor,
    );
  }
}
