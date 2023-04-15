import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_app/constants/colors.dart';
import 'package:quran_app/constants/style.dart';
import 'package:quran_app/models/quraan_model.dart';
import 'package:quran_app/service_providers/quraan_provider.dart';

class QuranHomeScreen extends StatelessWidget {
  const QuranHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<QuranProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Al-Quran",
          style: textStyle.copyWith(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.KPrimaryColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  hintText: "Search Surah",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[300],
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 15),
            FutureBuilder(
              future: pro.getQuraan(),
              builder: (_, data) {
                if (data.hasData) {
                  return ListView.builder(
                    itemCount: pro.quraan.length,
                    itemBuilder: (_, index) {
                      return Text(pro.quraan[index].data!.surahs![index].name!);
                    },
                  );
                }
                if (data.hasError) {
                  return Text("Cilad Ayaa Jirta");
                }

                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
