import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import '../models/quraan_model.dart';
import 'package:http/http.dart' as http;

class QuranProvider extends ChangeNotifier {
  List<QuraanModel> quraan = [];
  bool isloading = false;

  getQuraan() async {
    try {
      // isloading = true;
      // notifyListeners();
      var response = await http.get(
        Uri.parse("http://api.alquran.cloud/v1/quran/quran-uthmani"),
      );

      if (response.statusCode == 200) {
        print("Guul Ayee Kuso Dhamatay");
        List quranDecode = jsonDecode(response.body);

        // for (var element in quranDecode) {
        //   quraan.add(QuraanModel.fromJson(element));
        // }
        return quraan
            .map((e) =>
                QuraanModel.fromJson(quranDecode as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      //print(e.toString());
      log(e.toString());
      print("Halkaan Waaye meshu Errorka Ka Dhacayo");
    }
    // isloading = false;
    // notifyListeners();
  }
}
