import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/common_utills/roundBtn.dart';
import 'package:gymapp_uvexzon/signupLogin/loginpage.dart';
import 'package:gymapp_uvexzon/utills/colours.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PageColors.black,
      body: SafeArea(
        child: Container(
          width: media.width,
          padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 25
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: media.width * 0.5,
              ),
              Image.asset(
                "assets/images/welcomepageee.jpg",
                width: media.width * 0.75,
                fit: BoxFit.fitWidth,
              ),
              SizedBox(
                height: media.width * 0.1,
              ),
              Text(
                "Welcome, Stefani",
                style: TextStyle(
                    color: PageColors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                ),
              ),
              Text(
                "You are all set now, let’s reach your\ngoals together with us",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: PageColors.white,
                    fontSize: 12),
              ),
              const Spacer(),

              RoundBtnn(
                  topic: "Go To Home",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginView()
                        ),
                    );
                  }
                  ),

            ],
          ),
        ),

      ),
    );
  }
}
