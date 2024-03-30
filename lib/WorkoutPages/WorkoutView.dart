import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymapp_uvexzon/common_utills/Icon_titles.dart';
import 'package:gymapp_uvexzon/common_utills/roundBtn.dart';
import 'package:gymapp_uvexzon/utills/colours.dart';
import 'package:gymapp_uvexzon/utills/datatime.dart';


class AddScheduleView extends StatefulWidget {
  final DateTime date;
  const AddScheduleView({super.key, required this.date});

  @override
  State<AddScheduleView> createState() => _AddScheduleViewState();
}

class _AddScheduleViewState extends State<AddScheduleView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: PageColors.black,
        centerTitle: true,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            height: 40,
            width: 40,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: PageColors.white,
                borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              "assets/images/closed_btn.png",
              width: 15,
              height: 15,
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: Text(
          "Add Schedule",
          style: TextStyle(
              color: PageColors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: PageColors.white,
                  borderRadius: BorderRadius.circular(10)),
              child: Image.asset(
                "assets/images/more_btn.png",
                width: 15,
                height: 15,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
      backgroundColor: PageColors.black,
      body: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 25
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Row(
            children: [
              Image.asset(
                "assets/images/dateSelect.png",
                color: PageColors.white,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                dateToString(widget.date, formatStr: "E, dd MMMM yyyy"),
                style: TextStyle(
                    color: PageColors.white,
                    fontSize: 14),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Time",
            style: TextStyle(
                color: PageColors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: media.width * 0.35,
            child: CupertinoDatePicker(
              onDateTimeChanged: (newDate) {},
              initialDateTime: DateTime.now(),
              use24hFormat: false,
              minuteInterval: 1,
              mode: CupertinoDatePickerMode.time,
              backgroundColor: PageColors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Details Workout",
            style: TextStyle(
                color: PageColors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 8,
          ),
          IconTitleNextRow(
              icon: "assets/images/choose_workout.png",
              title: "Choose Workout",
              time: "Upperbody",
              color: PageColors.white,
              onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
          IconTitleNextRow(
              icon: "assets/images/difficulity.png",
              title: "Difficulity",
              time: "Beginner",
              color: PageColors.white,
              onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
          IconTitleNextRow(
              icon: "assets/images/repetitions.png",
              title: "Custom Repetitions",
              time: "",
              color: PageColors.white,
              onPressed: () {}),
          const SizedBox(
            height: 10,
          ),
          IconTitleNextRow(
              icon: "assets/images/repetitions.png",
              title: "Custom Weights",
              time: "",
              color: PageColors.white,
              onPressed: () {}),
          Spacer(),
          RoundBtnn(topic: "Save", onPressed: () {}),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
    );
  }
}
