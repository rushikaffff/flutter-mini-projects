import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/habit.dart';

class StorageService {
  static const String key = "habits";

  static Future<void> saveHabits(
      List<Habit> habits) async {
    final prefs = await SharedPreferences.getInstance();

    String data = jsonEncode(
      habits.map((e) => e.toJson()).toList(),
    );

    await prefs.setString(key, data);
  }

  static Future<List<Habit>> loadHabits() async {
    final prefs = await SharedPreferences.getInstance();

    String? data = prefs.getString(key);

    if (data == null) return [];

    List decoded = jsonDecode(data);

    return decoded
        .map((e) => Habit.fromJson(e))
        .toList();
  }
}