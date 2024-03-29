import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/signupLogin/loginpage.dart';
import '../../common_utills/on_boarding.dart';
import '../../utills/colours.dart';

class OnBoardingPages extends StatefulWidget {
  const OnBoardingPages({Key? key}) : super(key: key);

  @override
  State<OnBoardingPages> createState() => _OnBoardingPagesState();
}

class _OnBoardingPagesState extends State<OnBoardingPages> {
  int selectPage = 0;
  PageController controller = PageController();

  @override
  void initState() {
    super.initState();

    controller.addListener(() {
      setState(() {
        selectPage = controller.page?.round() ?? 0;
      });
    });
  }

  List onboardPageArr = [
    {
      "title": "Track Your Goal",
      "subtitle":
      "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      "image": "assets/images/onboardone.jpg"
    },
    {
      "title": "Get Burn",
      "subtitle":
      "Let’s keep burning, to achieve yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "image": "assets/images/VectorRgScreen.png",
      "additionalImage": "assets/images/onbardtwo.jpg",
    },
    {
      "title": "Eat Well",
      "subtitle":
      "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      "image": "assets/images/onboardthree.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PageColors.black,
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          PageView.builder(
            controller: controller,
            itemCount: onboardPageArr.length,
            itemBuilder: (context, index) {
              var pObj = onboardPageArr[index] as Map? ?? {};
              return OnBoardingPage(pObj: pObj);
            },
          ),
          SizedBox(
            width: 120,
            height: 120,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: CircularProgressIndicator(
                    color: PageColors.primaryColor1,
                    value: (selectPage + 1) / 4,
                    strokeWidth: 2,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 30,
                  ),
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: PageColors.primaryColor1,
                    borderRadius: BorderRadius.circular(35),
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.navigate_next,
                      color: PageColors.black,
                    ),
                    onPressed: () {
                      if (selectPage < 3) {
                        selectPage = selectPage + 1;
                        controller.animateToPage(
                          selectPage,
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.bounceInOut,
                        );
                        setState(() {});
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginView(),
                          ),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
