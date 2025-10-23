// ignore_for_file: depend_on_referenced_packages, unnecessary_import, avoid_print, unnecessary_null_comparison

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../network/cache_helper.dart';
part 'app_state.dart';

class AppCubit extends Cubit<AppState>
{
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  bool isDark = false;

  void changeAppMode({bool? fromShared})
  {
    if(fromShared != null)
    {
      isDark = fromShared;
      emit(AppChangeModeState());
    } else {
      isDark = !isDark;
       CacheHelper.saveData(key: 'isDark', value: isDark).then((value){
        emit(AppChangeModeState());
      });
    }
  }
}

