// HABITKU — hasil akhir Day 2
// main.dart sekarang isinya cuma titik awal app. Sisanya dipisah per folder:
//   models/     → bentuk data (Habit)
//   providers/  → tempat state + fungsi buat ngubahnya (Riverpod)
//   pages/      → satu file per halaman
//   widgets/    → komponen yang dipakai ulang

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:habitku/pages/home_page.dart';

void main() {
  // [L6] ProviderScope = "rumah" semua provider. Wajib membungkus app paling luar.
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Habitku',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
      ),
      home: const HomePage(),
    );
  }
}
