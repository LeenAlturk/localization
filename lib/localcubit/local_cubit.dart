import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:ui';
part 'local_state.dart';



class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en'));

  void toggleLocale() {
    emit(state.languageCode == 'en' ? const Locale('ar') : const Locale('en'));
  }
}
