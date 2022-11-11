import 'package:shared_preferences/shared_preferences.dart';

class PreferenceService {
  static final PreferenceService _instance = PreferenceService._();
  late final SharedPreferences _preferences;

  PreferenceService._();
  factory PreferenceService() => _instance;

  Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  static const _levelKey = "LEVEL_KEY";

  Future<void> setLevel(int value) async {
    _preferences.setInt(_levelKey, value);
  }

  int getLevel() {
    return _preferences.getInt(_levelKey) ?? 0;
  }

}