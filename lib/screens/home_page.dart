import 'package:flutter/material.dart';

import 'package:quran_app/components/containers.dart';
import 'package:quran_app/constants/colors.dart';
import 'package:quran_app/constants/style.dart';
import 'package:quran_app/models/containers_model.dart';

import 'package:quran_app/screens/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, this.models}) : super(key: key);
  final ContainersModel? models;

  @override
  Widget build(BuildContext context) {
    List page = [
      QuranHomeScreen(),
      Juz(),
      AsmaUllahScreen(),
      DuaScreen(),
      PrayerTime(),
      Tasbiih(),
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "Quran App",
          style: TextStyle(
            fontSize: 18,
            color: AppColors.KTextColor,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.grid_view,
            color: AppColors.KSecondColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Assalamualaikum",
              style: textStyle,
            ),
            SizedBox(height: 5),
            Text(
              "Salim Abuubakar Ahmed",
              style: textStyle.copyWith(
                fontSize: 17,
                color: Color(0xff468DC2),
              ),
            ),
            Spacer(),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1 / 1.5,
              ),
              //scrollDirection: Axis.horizontal,
              shrinkWrap: true,

              itemCount: listOfContainers.length,
              itemBuilder: (_, index) {
                return BuildingContainers(
                  model: listOfContainers[index],
                  onTap: () {
                    var route = MaterialPageRoute(builder: (_) => page[index]);
                    Navigator.push(context, route);
                  },
                );
              },
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
