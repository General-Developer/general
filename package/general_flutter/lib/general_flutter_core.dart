// ignore_for_file: non_constant_identifier_names

import 'package:flutter/foundation.dart';
import 'package:general/app_background/app_background_core.dart';
import 'package:general/battery/battery_core.dart';
import "package:general_dart/general_dart.dart";
import 'package:general_flutter/app/app.dart';
import 'package:general_flutter/app_background/app_background_core.dart';
import 'package:general_flutter/device/device.dart';
import 'package:general_flutter/local_auth/local_auth.dart';
import 'package:general_flutter/location/location.dart';
import 'package:general_flutter/notification/notification_core.dart';
import 'package:general_flutter/permission/permission.dart';
import 'package:general_flutter/sim_card/sim_card_core.dart';
import 'package:general_flutter/sms/sms.dart';
import 'package:general_flutter/speech_to_text/speech_to_text.dart';
import 'package:general_flutter/text_to_speech/text_to_speech_core.dart';

class GeneralFlutter extends GeneralDart {
  GeneralFlutter();

  @override
  void test() {
    if (kDebugMode) {
      print("test flutter");
    }
  }

  @override
  GeneralLibraryAppBackgroundBase get app_background {
    return GeneralLibraryAppBackgroundBaseFlutter();
  }

  @override
  GeneralLibraryPermissionBaseFlutter get permission {
    return GeneralLibraryPermissionBaseFlutter();
  }

  @override
  GeneralLibraryNotificationBaseFlutter get notification {
    return GeneralLibraryNotificationBaseFlutter();
  }

  @override
  GeneralLibraryBatteryBase get battery {
    return GeneralLibraryBatteryBase();
  }

  @override
  GeneralLibraryTextToSpeechBaseFlutter get text_to_speech {
    return GeneralLibraryTextToSpeechBaseFlutter();
  }

  @override
  GeneralLibraryDeviceBaseFlutter get device {
    return GeneralLibraryDeviceBaseFlutter();
  }

  @override
  GeneralLibraryGamePadBase get gamepad {
    return GeneralLibraryGamePadBase();
  }

  @override
  GeneralLibrarySpeechToTextBaseFlutter get speech_to_text {
    return GeneralLibrarySpeechToTextBaseFlutter();
  }

  @override
  GeneralLibrarySimCardBaseFlutter get sim_card {
    return GeneralLibrarySimCardBaseFlutter();
  }

  @override
  GeneralLibrarySmsBaseFlutter get sms {
    return GeneralLibrarySmsBaseFlutter();
  }

  @override
  GeneralLibraryAppBaseFlutter get app {
    return GeneralLibraryAppBaseFlutter();
  }

  @override
  
  GeneralLibraryLocalAuthBaseFlutter get local_auth {
    return GeneralLibraryLocalAuthBaseFlutter();
  }

  @override 
  GeneralLibraryLocationBaseFlutter get location {
    return GeneralLibraryLocationBaseFlutter();
  }

  @override
  GeneralLibraryPlayerBaseDart get player {
    return GeneralLibraryPlayerBaseDart();
  }
}
