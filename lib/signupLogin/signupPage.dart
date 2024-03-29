import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/signupLogin/loginpage.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool isCheck = false;
  bool isCheck1 = false;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? firstNameError;
  String? lastNameError;
  String? emailError;
  String? passwordError;

  void signUp() {
    setState(() {
      firstNameError = firstNameController.text.isEmpty ? "First name is required" : null;
      lastNameError = lastNameController.text.isEmpty ? "Last name is required" : null;
      emailError = emailController.text.isEmpty ? "Email is required" : null;
      passwordError = passwordController.text.isEmpty ? "Password is required" : null;
    });

    if (firstNameError == null && lastNameError == null && emailError == null && passwordError == null) {
      // Process sign up here
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
                SizedBox(
                  height: media.width * 0.15,
                ),
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
                  "Create an Account",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: media.width * 0.05),
                SizedBox(height: 30.0),
                TextField(
                  controller: firstNameController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    errorText: firstNameError,
                    prefixIcon:
                    const Icon(Icons.person_2_outlined, color: Colors.grey),
                    hintText: 'First Name',
                    contentPadding: const EdgeInsets.all(15.0),
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
                SizedBox(height: media.width * 0.04),
                TextField(
                  controller: lastNameController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    errorText: lastNameError,
                    hintText: 'Last Name',
                    prefixIcon:
                    const Icon(Icons.person_2_outlined, color: Colors.grey),
                    contentPadding: const EdgeInsets.all(15.0),
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                  ),
                ),
                SizedBox(height: media.width * 0.04),
                TextField(
                  controller: emailController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    errorText: emailError,
                    prefixIcon: const Icon(Icons.email_outlined, color: Colors.grey),
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
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      icon: Icon(
                        isCheck
                            ? Icons.check_box
                            : Icons.check_box_outline_blank_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          "By continuing you accept our Privacy Policy and\nTerm of Use",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: media.width * 0.4),
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
                          'Next',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: media.width * 0.04),
                SizedBox(height: 30.0),
                SizedBox(height: media.width * 0.04),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LoginView()),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
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
