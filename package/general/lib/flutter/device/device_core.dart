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

import 'package:general/core/device/device_core.dart';
import 'package:general_lib/general_lib.dart';
// import 'package:safe_device/safe_device.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class GeneralLibraryDeviceBaseFlutter implements GeneralLibraryDeviceBase {
  bool get is_desktop {
    if (Dart.isWeb) {
      return false;
    }
    if (Dart.isDesktop) {
      return true;
    }
    return false;
  }

  bool get is_mobile {
    if (Dart.isWeb) {
      return false;
    }
    if (Dart.isMobile) {
      return true;
    }
    return false;
  }

  @override
  bool isSupport() {
    return true;
  }

  @override
  Future<bool> get android_is_development_mode_enable async {
    try {
      if (is_mobile) {
        // return await SafeDevice.isDevelopmentModeEnable;
      }
    } catch (e) {}
    return false;
  }

  @override
  Future<bool> get android_is_on_external_storage async {
    try {
      if (is_mobile) {
        // return await SafeDevice.isOnExternalStorage;
      }
    } catch (e) {}
    return false;
  }

  @override
  Future<bool> get usb_debug_check async {
    try {
      if (is_mobile) {
        // return await SafeDevice.isUsbDebuggingEnabled;
      }
    } catch (e) {}
    return false;
  }

  @override
  Future<bool> get is_mock_location async {
    try {
      if (is_mobile) {
        // return await SafeDevice.isMockLocation;
      }
    } catch (e) {}
    return false;
  }

  @override
  Future<bool> get is_jailbroken async {
    try {
      if (is_mobile) {
        // return await SafeDevice.isJailBroken;
      }
    } catch (e) {}
    return false;
  }

  @override
  Future<bool> get is_real_device async {
    try {
      if (is_mobile) {
        // return await SafeDevice.isRealDevice;
      }
    } catch (e) {}
    return false;
  }

  @override
  Future<bool> get is_safe_device async {
    try {
      if (is_mobile) {
        // return await SafeDevice.isSafeDevice;
      }
    } catch (e) {}
    return false;
  }

  static Future<void> wake_lock_initizialized_static() async {
    await WakelockPlus.enable();
  }

  @override
  Future<void> wake_lock_initizialized() async {
    await wake_lock_initizialized_static();
  }

  static Future<void> wake_lock_toggle_static({
    required bool isEnable,
  }) async {
    await WakelockPlus.toggle(enable: isEnable);
  }

  @override
  Future<void> wake_lock_toggle({
    required bool isEnable,
  }) async {
    await wake_lock_toggle_static(
      isEnable: isEnable,
    );
  }

  static Future<bool> wake_lock_is_enable_static() async {
    return await WakelockPlus.enabled;
  }

  @override
  Future<bool> wake_lock_is_enable() async {
    return await wake_lock_is_enable_static();
  }
}
