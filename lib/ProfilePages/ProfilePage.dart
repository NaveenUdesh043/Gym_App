import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gymapp_uvexzon/WorkoutPages/SelectWorkout.dart';
import 'package:gymapp_uvexzon/paymentPage/paymentPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String imageName = 'woman.png';
  String userName = 'Stefani Wong';
  String programName = 'Lose a Fat Program';
  List<String> statistics = ['180 cm', '65 kg', '22 years'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width * 0.06,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.format_list_bulleted),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/images/$imageName'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        userName,
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.edit),
                      color: Color(0xffFFC168),
                      onPressed: () {
                        setState(() {
                          imageName = 'new_image_name.png';
                          userName = 'New User Name';
                        });
                      },
                    ),
                  ],
                ),
                Text(
                  programName,
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    for (var statistic in statistics)
                      Expanded(
                        child: StatisticTile(label: statistic),
                      ),
                  ],
                ),
                SizedBox(height: 24),
                AccountSection(
                  title: 'Account',
                  tiles: [
                    AccountLinkTile(
                      icon: Icons.person_2_outlined,
                      label: 'Personal Data',
                      onTap: () {},
                    ),
                    AccountLinkTile(
                      icon: Icons.receipt_outlined,
                      label: 'Payment',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>Payment(key: UniqueKey())

                        ),
                        );
                      },
                    ),
                    AccountLinkTile(
                      icon: Icons.pie_chart_outline_outlined,
                      label: 'Activity History',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SelectWorkout(dObj: {})),
                        );
                      },
                    ),
                    AccountLinkTile(
                      icon: Icons.bar_chart_outlined,
                      label: 'Workout Progress',
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(height: 24),
                AccountSection(
                  title: 'Other',
                  tiles: [
                    AccountLinkTile(
                      icon: Icons.mail_outline,
                      label: 'Contact Us',
                      onTap: () {},
                    ),
                    AccountLinkTile(
                      icon: Icons.privacy_tip_outlined,
                      label: 'Privacy Policy',
                      onTap: () {},
                    ),
                    AccountLinkTile(
                      icon: Icons.settings_outlined,
                      label: 'Settings',
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Activity History',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width * 0.06,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Text(
          'Activity History Page',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class StatisticTile extends StatelessWidget {
  final String label;

  const StatisticTile({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1.0),
            spreadRadius: 1.0,
            blurRadius: 1.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: MediaQuery.of(context).size.width * 0.035,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class AccountSection extends StatelessWidget {
  final String title;
  final List<Widget> tiles;

  const AccountSection({
    Key? key,
    required this.title,
    required this.tiles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              color: Colors.black,
              fontSize: MediaQuery.of(context).size.width * 0.04,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          Column(
            children: tiles,
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}

class AccountLinkTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const AccountLinkTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(
          label,
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: MediaQuery.of(context).size.width * 0.037,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}
