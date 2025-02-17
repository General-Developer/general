/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

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
// ignore_for_file: non_constant_identifier_names, empty_catches

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:general/core/app/app.dart';
import 'package:general_lib_flutter/extension/build_context.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

/// UncompleteDocumentation
class GeneralLibraryAppBaseFlutter implements GeneralLibraryAppBase {
  /// UncompleteDocumentation
  static GlobalKey<NavigatorState> flutter_navigator_key =
      GlobalKey<NavigatorState>();

  /// UncompleteDocumentation
  static GlobalKey flutter_repaint_boundery_key = GlobalKey();
  @override
  Future<bool> wake_lock_is_enabled() async {
    return await WakelockPlus.enabled;
  }

  @override
  Future<void> wake_lock_toggle({
    required bool enable,
  }) async {
    await WakelockPlus.toggle(enable: enable);
  }

  @override
  Future<void> wake_lock_disable() async {
    await WakelockPlus.disable();
  }

  @override
  Future<void> wake_lock_enable() async {
    await WakelockPlus.enable();
  }

  /// UncompleteDocumentation

  static Widget repaintBoundaryWidget({
    required Widget child,
  }) {
    return RepaintBoundary(
      key: GeneralLibraryAppBaseFlutter.flutter_repaint_boundery_key,
      child: child,
    );
  }

  @override
  Future<Uint8List?> screenshot_current_widget() async {
    try {
      BuildContext? context = GeneralLibraryAppBaseFlutter
          .flutter_repaint_boundery_key.currentContext;
      if (context != null) {
        try {
          return await context.toImagePng();
        } catch (e) {}
      }
    } catch (e) {}
    return null;
  }

  @override
  void showSnackBar({
    required String message,
  }) {
    try {
      BuildContext? context =
          GeneralLibraryAppBaseFlutter.flutter_navigator_key.currentContext;
      if (context != null) {
        context.showSnackBar(message);
      }
    } catch (e) {}
  }

  @override
  Future<void> setFullScreen(bool isFullScreen) async {
    await static_setFullScreen(isFullScreen);
  }

  /// UncompleteDocumentation
  static Future<void> static_setFullScreen(bool isFullScreen) async {
    if (isFullScreen) {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    } else {
      await SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
          overlays: SystemUiOverlay.values);
    }
  }

  @override
  Future<void> setPreferredOrientations({
    required List<GeneralLibraryAppDeviceOrientationType> orientations,
  }) async {
    static_setPreferredOrientations(orientations: orientations);
  }

  /// UncompleteDocumentation
  static Future<void> static_setPreferredOrientations({
    required List<GeneralLibraryAppDeviceOrientationType> orientations,
  }) async {
    static_flutter_setPreferredOrientations(
        orientations: orientations.toFlutter());
  }

  /// UncompleteDocumentation
  static Future<void> static_flutter_setPreferredOrientations({
    required List<DeviceOrientation> orientations,
  }) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  @override
  bool isSupport() {
    return true;
  }
}

/// UncompleteDocumentation
extension ExtensionListGeneralAppDeviceOriendaion
    on List<GeneralLibraryAppDeviceOrientationType> {
  /// UncompleteDocumentation
  List<DeviceOrientation> toFlutter() {
    return map((e) => DeviceOrientation.values
            .singleWhere((element) => element.name == e.name))
        .whereType<DeviceOrientation>()
        .toList();
  }
}
