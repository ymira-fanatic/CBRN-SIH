import 'package:flutter/material.dart';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:progresssystem_splashscreen/src/constants/colors.dart';

import 'package:progresssystem_splashscreen/src/constants/image_strings.dart';
import 'package:progresssystem_splashscreen/src/constants/text_strings.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/chemical/chemicalTrainings.dart';
import 'package:progresssystem_splashscreen/src/features/authentication/screens/test/test_screen.dart';

import '../../../../constants/sizes.dart';
import '../../controllers/firebase_controller.dart';

import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Text(tAppName, style: Theme.of(context).textTheme.headline4),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: tCardBgColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Image(image: AssetImage(tUserProfileImage)),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashboardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tDashboardTitle, style: txtTheme.bodyText1),
              Text(tDashboardHeading, style: txtTheme.bodyText1),
              const SizedBox(height: tDashboardPadding),

              // Categories

              SizedBox(
                height: 160,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildCategory("Chemical", "assets/images/dashboard/dash1.png"),
                    const SizedBox(width: 10), // Add spacing between categories
                    buildCategory("Biological", "assets/images/dashboard/dash2.png"),
                    const SizedBox(width: 10), // Add spacing between categories
                    buildCategory("Radiological", "assets/images/dashboard/dash3.png"),
                    const SizedBox(width: 10), // Add spacing between categories
                    buildCategory("Nuclear", "assets/images/dashboard/dash4.png"),
                  ],
                ),
              ),
              const SizedBox(height: tDashboardPadding),
              buildCard("Health"),
              const SizedBox(height: tDashboardPadding),
              buildCard("LifeLine"),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory(String categoryName, String imagePath) {
    return GestureDetector(
      onTap: () {
        Get.to(ChemicalTraining());
      },
      child: SizedBox(
        width: 175,
        child: Column(
          children: [
            Image.asset(imagePath, height: 80),
            Container(
              width: 175,
              height: 50,
              constraints: BoxConstraints(maxHeight: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Center(
                child: Text(
                  categoryName,
                  style: TextStyle(color: tDarkColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String cardTitle) {
    var txtTheme;
    return SizedBox(
      width: 345,
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: tCardBgColor,
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cardTitle,
              style: TextStyle(color: tDarkColor),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
