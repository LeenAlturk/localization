import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localizationapp/applocalization.dart';
import 'package:localizationapp/localcubit/local_cubit.dart';


class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppLocalizations.of(context)!.translate("hello"))),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.read<LocaleCubit>().toggleLocale(),
              child: Text(AppLocalizations.of(context)!.translate("change_language")),
            ),
          ),
          
        ],
      ),
    );
  }
}
