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

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:gamepads/gamepads.dart';
import 'package:general/gamepad/gamepad_core.dart';
import 'package:general_lib/general_lib.dart';

class GeneralLibraryGamePadBaseFlutter implements GeneralLibraryGamePadBase {
  GeneralLibraryGamePadBaseFlutter();

  @override
  Future<List<GamePadControllerData>> list() async {
    if (Dart.isWeb) {
      return [];
    }
    // if (Dart.isDesktop) {
    return (await Gamepads.list()).map((e) {
      return GamePadControllerData(id: e.id, name: e.name);
    }).toList();
    // }
    return [];
  }

  @override
  Stream<GamePadControllerEventData> get events async* {
    if (Dart.isWeb) {
      return;
    }
    // if (Dart.isDesktop) {
      // Gamepads.events;

      await for (GamepadEvent event in Gamepads.events) {
        // Gamepads.events.listen((GamepadEvent event) {
        GamePadControllerEventKeyType gamePadControllerEventKeyType = GamePadControllerEventKeyType.analog;
        if (event.type == KeyType.button) {
          gamePadControllerEventKeyType = GamePadControllerEventKeyType.button;
        }

        yield GamePadControllerEventData(
          gamepadId: event.gamepadId,
          timestamp: event.timestamp,
          type: gamePadControllerEventKeyType,
          key: event.key,
          value: event.value,
        );
      }
      // });
    // }
  }
}
