/* <!-- START LICENSE -->


Program Ini Di buat Oleh DEVELOPER Dari PERUSAHAAN GLOBAL CORPORATION 
Social Media: 

- Youtube: https://youtube.com/@Global_Corporation 
- Github: https://github.com/globalcorporation
- TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

Seluruh kode disini di buat 100% murni tanpa jiplak / mencuri kode lain jika ada akan ada link komment di baris code

Jika anda mau mengedit pastikan kredit ini tidak di hapus / di ganti!

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names, empty_catches

import 'package:flutter/material.dart';

import 'package:general_flutter/general_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // ini bisa pakai generaldart dan anda bebas mengatur di manapun
  GeneralFlutter general_library = GeneralFlutter();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      task();
    });
    // task();
  }
  
  void task() {
    Future(() async {
      // check dahulu apakah di beri ijin
      await general_library.app_background.has_permissions;
      // mengaktifkan background app
      await general_library.app_background.enable_background;
      // check apakah aplikasi bisa sudah berjalan di background
      general_library.app_background.is_background;
      // menonaktifkan background app
      // await general_library.app_background.disable_background;
    });
  }
  
  // --- code
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
