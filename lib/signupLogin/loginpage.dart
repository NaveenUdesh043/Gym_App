import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymapp_uvexzon/WorkoutPages/WorkoutView.dart';
import 'package:gymapp_uvexzon/signupLogin/signupPage.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isCheck = false;
  bool isCheck1 = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? emailError;
  String? passwordError;

  void signUp() {
    setState(() {
      emailError = emailController.text.isEmpty ? "Email is required" : null;
      passwordError = passwordController.text.isEmpty ? "Password is required" : null;
    });

    if (emailError == null && passwordError == null) {

    }
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: media.width * 0.9),
                Text(
                  "Hey there,",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: media.width * 0.05),
                TextField(
                  controller: emailController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    errorText: emailError,
                    prefixIcon:
                    const Icon(Icons.email_outlined,
                        color: Colors.grey),
                    hintText: 'Email',
                    contentPadding: const EdgeInsets.all(15.0),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
                SizedBox(height: media.width * 0.04),
                TextField(
                  controller: passwordController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  obscureText: !isCheck,
                  decoration: InputDecoration(
                    errorText: passwordError,
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                      color: Colors.grey,
                    ),
                    labelText: 'Password',
                    contentPadding: const EdgeInsets.all(15.0),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck1 = !isCheck1;
                        });
                      },
                      icon: Icon(
                        isCheck1 ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: media.width * 0.04),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginView()),
                    );
                  },
                  child: Text(
                    "Forgot password",
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 350),
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.purple.withOpacity(0.35),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),


                  child: ElevatedButton(
                    onPressed: signUp,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFD180),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(99.0),
                      ),
                      minimumSize: Size(315, 60),
                      padding: EdgeInsets.zero,
                    ),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.login_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),


                SizedBox(height: media.width * 0.04),
                SizedBox(height: media.width * 0.04),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignUpView()
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Don't you have an account yet? ",
                        style: TextStyle(
                          color: Colors.white,

                        ),
                      ),
                      Text(
                        "Signup",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width * 0.04,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: media.width * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
