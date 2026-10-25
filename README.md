# Habitku 🔥

Aplikasi pencatat kebiasaan (habit tracker) sederhana yang dibuat dengan **Flutter**.
Project ini dipakai sebagai contoh *live coding* di **Raion Academy Mobile Engineer 2026**:
Day 1 membahas UI layout dan pindah halaman, Day 2 membahas clean code dan state management
pakai **Riverpod**.

## ✨ Fitur

- Sapaan dengan foto profil
- Kartu progres harian ("3 dari 4 habit · 75%") yang **ter-update otomatis**
- Daftar habit yang bisa **dicentang**
- Halaman **Tambah Habit**: habit baru langsung masuk ke daftar
- Bisa di-scroll, aman dipakai di layar kecil maupun landscape

## 🛠️ Tech Stack

| | |
|---|---|
| Framework | Flutter 3.47 (Dart 3.13) |
| State management | [flutter_riverpod](https://pub.dev/packages/flutter_riverpod) 3.x |
| Platform | Android (bisa juga dijalankan di iOS, web, dan desktop) |

## 🚀 Cara Clone & Menjalankan

### Prasyarat

- [Flutter SDK](https://docs.flutter.dev/get-started/install) sudah terpasang dan masuk PATH
- Android Studio + emulator, atau HP Android dengan USB debugging
- Git

Cek dulu semuanya siap:

```bash
flutter doctor
```

Minimal bagian **Flutter**, **Android toolchain**, dan **Android Studio** harus ✔️.

### Langkah

```bash
# 1. Clone repository
git clone https://github.com/<username-github>/habitku.git

# 2. Masuk ke folder project
cd habitku

# 3. Download semua package
flutter pub get

# 4. Jalankan (pastikan emulator sudah nyala atau HP sudah tercolok)
flutter run
```

Opsional, jalankan test:

```bash
flutter test
```

> Ganti `<username-github>` dengan username GitHub pemilik repository ini.

## 📁 Struktur Folder

```
lib/
├── main.dart                  ← titik awal app, dibungkus ProviderScope
├── models/
│   └── habit.dart             ← bentuk data Habit
├── providers/
│   └── habit_provider.dart    ← state daftar habit + fungsi toggle & add
├── pages/
│   ├── home_page.dart         ← halaman utama (sapaan, progres, daftar habit)
│   └── add_habit_page.dart    ← halaman Tambah Habit
└── widgets/
    ├── habit_card.dart        ← kartu satu habit
    └── progress_card.dart     ← kartu progres (done & total → persen)
assets/
└── avatar.png                 ← foto profil
```

Aturan penamaan: **file** pakai `snake_case` (`habit_card.dart`), **class** pakai `PascalCase` (`HabitCard`).

## 📚 Alur Materi

| Langkah | Materi | Konsep utama |
|---|---|---|
| 1 · Kerangka | Scaffold, AppBar, sapaan | `MaterialApp`, `Scaffold`, `Column`, `Text` |
| 2 · Kotak & Baris | Foto profil, kolom cari, kartu progres | `Row`, `Container`, `Expanded`, `TextField`, `CircleAvatar` |
| 3 · Komponen & Scroll | Kartu habit dipakai ulang | Widget buatan sendiri, constructor, `SingleChildScrollView` |
| 4 · Pindah Halaman | Tombol + ke halaman Tambah Habit | `Navigator.push` / `Navigator.pop` |
| 5 · Pisah File | `main.dart` dipecah per folder | Clean code, `import` |
| 6 · Model + Provider | Data habit dipindah ke provider | `Notifier`, `NotifierProvider`, `copyWith` |
| 7 · Sambungin ke UI | Centang beneran, progres otomatis | `ConsumerWidget`, `ref.watch`, `ref.read` |

Ringkasnya, `ref.watch` dipakai di dalam `build()` untuk **baca + dengerin** perubahan data,
sedangkan `ref.read` dipakai di `onPressed`/`onTap` untuk **memanggil fungsi** sekali.

## 🧯 Kalau Ada Masalah

| Masalah | Solusi |
|---|---|
| Kode merah semua setelah clone | `flutter pub get` |
| `'flutter' is not recognized` | Folder `flutter\bin` belum masuk PATH |
| Import `package:habitku/...` merah | Pastikan `name:` di `pubspec.yaml` adalah `habitku` |
| Error *No ProviderScope found* | Pastikan `runApp(const ProviderScope(child: MyApp()))` di `main.dart` |
| Foto profil tidak muncul | Cek `assets/avatar.png` dan bagian `assets:` di `pubspec.yaml`, lalu stop dan `flutter run` ulang |
| Layar emulator hitam | `flutter run --no-enable-impeller` |

---

## 👤 Pembuat

**I Komang Yudistira Arya Permana (Yudis)**
**Sandhyka Rafasya Trisnatan (Rafasya)**
Pemateri Raion Academy · Mobile Engineer 2026
