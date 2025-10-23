part of 'app_cubit.dart';

@immutable
sealed class AppState {}

final class AppInitial extends AppState {}

class AppChangeBottomNavBarState extends AppState {}

class AppCreateDatabaseState extends AppState {}

class AppGetDatabaseState extends AppState {}

class AppGetDatabaseLoadingState extends AppState {}

class AppInsertDatabaseState extends AppState {}

class AppUpdateDatabaseState extends AppState {}

class AppDeleteDatabaseState extends AppState {}

class AppChangeBottomSheetState extends AppState {}

class AppChangeModeState extends AppState {}