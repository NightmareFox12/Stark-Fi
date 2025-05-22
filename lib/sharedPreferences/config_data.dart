import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_android/shared_preferences_android.dart';

const SharedPreferencesAsyncAndroidOptions options =
    SharedPreferencesAsyncAndroidOptions(
      backend: SharedPreferencesAndroidBackendLibrary.SharedPreferences,
      originalSharedPreferencesOptions: AndroidSharedPreferencesStoreOptions(
        fileName: 'user_data',
      ),
    );

class ConfigData {
  Future<SharedPreferences> getInstance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }
}
