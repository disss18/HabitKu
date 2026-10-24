import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:habitku/models/habit.dart';

class HabitNotifier extends Notifier<List<Habit>> {
  @override
  List<Habit> build() {
    return const [
      Habit(
        icon: Icons.water_drop,
        title: 'Minum air',
        subtitle: '8 gelas',
        isDone: true,
      ),
      Habit(
        icon: Icons.menu_book,
        title: 'Baca buku',
        subtitle: '20 halaman',
        isDone: true,
      ),
      Habit(icon: Icons.code, title: 'Ngoding', subtitle: '1 jam'),
      Habit(
        icon: Icons.directions_run,
        title: 'Olahraga',
        subtitle: '30 menit',
      ),
    ];
  }

  void toggle(int index) {
    final list = [...state];
    list[index] = list[index].copyWith(isDone: !list[index].isDone);
    state = list;
  }

  void add(String title, String subtitle) {
    state = [
      ...state,
      Habit(icon: Icons.star, title: title, subtitle: subtitle),
    ];
  }
}

final habitProvider = NotifierProvider<HabitNotifier, List<Habit>>(
  HabitNotifier.new,
);
