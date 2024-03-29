import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/viewPages/on_boards/on_boarding_pages.dart';
import '../../common_utills/roundBtn.dart';
import '../../utills/colours.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  bool isChangeColor = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PageColors.black,
      body: Container(
        width: media.width,
        decoration: BoxDecoration(
          gradient: isChangeColor
              ? LinearGradient(
            colors: PageColors.primaryG,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          )
              : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/intense.png',
              height: 200,
              width: 200,
            ),
            const Spacer(),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: RoundBtnn(
                  topic: "Get Started",
                  b_type: isChangeColor
                      ? RoundBtn.textGradient
                      : RoundBtn.bgGradient,
                  onPressed: () {
                    if (isChangeColor) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OnBoardingPages(),
                        ),
                      );
                    } else {
                      setState(() {
                        isChangeColor = true;
                      });
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
