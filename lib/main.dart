import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:quran_app/constants/colors.dart';

import 'screens/screens.dart';
import 'service_providers/quraan_provider.dart';

void main() {
  runApp(QuraanApp());
}

class QuraanApp extends StatelessWidget {
  const QuraanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => QuranProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quran App',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: AppColors.backgroundColor,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
