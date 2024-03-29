import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/common_utills/const.dart';
import 'package:gymapp_uvexzon/common_utills/middle_card.dart';
import 'package:gymapp_uvexzon/common_utills/tile_widgets.dart';
import 'package:gymapp_uvexzon/signupLogin/loginpage.dart';


import '../common_utills/small_iconbutton.dart';

class AdminProfile extends StatelessWidget {
  const AdminProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: smallIconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                    const Text(
                      "Admin",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: smallIconButton(
                        icon: const Icon(Icons.more_horiz),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage:
                          const AssetImage('assets/images/woman.png'),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Stefani Wong",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Admin",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 15.00),
                            ),
                          ],
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.gold),
                        child: const Text(
                          'Edit',
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MiddleCard(
                      number: "110",
                      text: "Registered",
                    ),
                    MiddleCard(
                      number: "83",
                      text: "Paid",
                    ),
                    MiddleCard(
                      number: "27",
                      text: "Pending",
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    height: 280,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: AppColors.white),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 20),
                            child: Text(
                              "Account",
                              style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          TileWidget(
                            icon: Icons.person_outline,
                            title: "Add Members",
                          ),
                          TileWidget(
                            title: "Add Shedules",
                            icon: Icons.list_alt_sharp,
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginView(),
                              ));
                            },
                          ),
                          TileWidget(
                            title: "Add Diet Plans",
                            icon: Icons.ads_click_outlined,
                          ),
                          TileWidget(
                            title: "Add Sleep Plan",
                            icon: Icons.self_improvement_sharp,
                          )
                        ])),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 20),
                        child: Text(
                          "Other",
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      TileWidget(title: "Contact Us", icon: Icons.call),
                      TileWidget(
                        title: "Privacy and Policy",
                        icon: Icons.privacy_tip,
                      ),
                      TileWidget(
                        title: "Settings",
                        icon: Icons.settings,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}