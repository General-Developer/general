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
// ignore_for_file: deprecated_member_use
import 'package:general/core/pemission/pemission_type.dart';
import 'package:permission_handler/permission_handler.dart';

/// UncompleteDocumentation
extension ExtensionPermissionTypeToPermission on PermissionType {
  /// UncompleteDocumentation
  Permission get toPermission {
    if (this == PermissionType.calendar) {
      return Permission.calendar;
    }

    if (this == PermissionType.camera) {
      return Permission.camera;
    }

    if (this == PermissionType.contacts) {
      return Permission.contacts;
    }

    if (this == PermissionType.location) {
      return Permission.location;
    }

    if (this == PermissionType.locationAlways) {
      return Permission.locationAlways;
    }

    if (this == PermissionType.locationWhenInUse) {
      return Permission.locationWhenInUse;
    }

    if (this == PermissionType.mediaLibrary) {
      return Permission.mediaLibrary;
    }

    if (this == PermissionType.microphone) {
      return Permission.microphone;
    }

    if (this == PermissionType.phone) {
      return Permission.phone;
    }

    if (this == PermissionType.photos) {
      return Permission.photos;
    }

    if (this == PermissionType.photosAddOnly) {
      return Permission.photosAddOnly;
    }

    if (this == PermissionType.reminders) {
      return Permission.reminders;
    }

    if (this == PermissionType.sensors) {
      return Permission.sensors;
    }

    if (this == PermissionType.sms) {
      return Permission.sms;
    }

    if (this == PermissionType.speech) {
      return Permission.speech;
    }

    if (this == PermissionType.storage) {
      return Permission.storage;
    }

    if (this == PermissionType.ignoreBatteryOptimizations) {
      return Permission.ignoreBatteryOptimizations;
    }

    if (this == PermissionType.notification) {
      return Permission.notification;
    }

    if (this == PermissionType.accessMediaLocation) {
      return Permission.accessMediaLocation;
    }

    if (this == PermissionType.activityRecognition) {
      return Permission.activityRecognition;
    }

    if (this == PermissionType.unknown) {
      return Permission.unknown;
    }

    if (this == PermissionType.bluetooth) {
      return Permission.bluetooth;
    }

    if (this == PermissionType.manageExternalStorage) {
      return Permission.manageExternalStorage;
    }

    if (this == PermissionType.systemAlertWindow) {
      return Permission.systemAlertWindow;
    }

    if (this == PermissionType.requestInstallPackages) {
      return Permission.requestInstallPackages;
    }

    if (this == PermissionType.appTrackingTransparency) {
      return Permission.appTrackingTransparency;
    }

    if (this == PermissionType.criticalAlerts) {
      return Permission.criticalAlerts;
    }

    if (this == PermissionType.accessNotificationPolicy) {
      return Permission.accessNotificationPolicy;
    }

    if (this == PermissionType.bluetoothScan) {
      return Permission.bluetoothScan;
    }

    if (this == PermissionType.bluetoothAdvertise) {
      return Permission.bluetoothAdvertise;
    }

    if (this == PermissionType.bluetoothConnect) {
      return Permission.bluetoothConnect;
    }

    if (this == PermissionType.nearbyWifiDevices) {
      return Permission.nearbyWifiDevices;
    }

    if (this == PermissionType.videos) {
      return Permission.videos;
    }

    if (this == PermissionType.audio) {
      return Permission.audio;
    }

    if (this == PermissionType.scheduleExactAlarm) {
      return Permission.scheduleExactAlarm;
    }

    if (this == PermissionType.sensorsAlways) {
      return Permission.sensorsAlways;
    }

    if (this == PermissionType.calendarWriteOnly) {
      return Permission.calendarWriteOnly;
    }

    if (this == PermissionType.calendarFullAccess) {
      return Permission.calendarFullAccess;
    }

    if (this == PermissionType.assistant) {
      return Permission.assistant;
    }

    if (this == PermissionType.backgroundRefresh) {
      return Permission.backgroundRefresh;
    }

    return Permission.unknown;
  }
}

/// UncompleteDocumentation
extension ExtensionListPermissionTypeToPermission on List<PermissionType> {
  /// UncompleteDocumentation
  List<Permission> get toPermissions {
    return map((e) => e.toPermission).toList();
  }
}
