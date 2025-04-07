import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localizationapp/HomeScreen.dart';
import 'package:localizationapp/applocalization.dart';
import 'package:localizationapp/localcubit/local_cubit.dart';

void main() {
  debugger(); 
  runApp(
    BlocProvider(
      create: (context) => LocaleCubit(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocaleCubit, Locale>(
      builder: (context, locale) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          locale: locale,
          supportedLocales: const [
            Locale('en'), 
            Locale('ar'),
          ],
          localizationsDelegates: const [
            AppLocalizations.delegate,  // هذا خاص بملفات الترجمة
            GlobalMaterialLocalizations.delegate, // يدعم النصوص العربية
            GlobalWidgetsLocalizations.delegate, // يدعم اتجاه النصوص
            GlobalCupertinoLocalizations.delegate, // يدعم مكونات iOS مثل التاريخ
          ],
          home: HomeScreen(),
        );
      },
    );
  }
}