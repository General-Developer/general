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
import 'dart:typed_data';

import 'package:general_dart/general_dart.dart';
import 'package:sms_flutter/contact.dart';
import 'package:sms_flutter/sms_flutter.dart';

// extension ExtensionTOnThreadToToThse on Photo {
//   SmsPhotoInfoData toSmsPhotoInfoData() {
//     return SmsPhotoInfoData(
//       bytes: bytes ?? Uint8List.fromList([]),
//     );
//   }
// }

extension ExtensionTOnThreadToToThses on Photo? {
  SmsPhotoInfoData toSmsPhotoInfoData() {
    Photo? photo = this;
    if (photo != null) {
      return SmsPhotoInfoData(
        bytes: photo.bytes,
      );
    }
    return SmsPhotoInfoData(
      bytes: Uint8List.fromList([]),
    );
  }
}

extension ExtensionTOnThreadToToThsse on Contact? {
  SmsContactInfoData toSmsContactInfoData() {
    Contact? contact = this;
    if (contact != null) {
      return SmsContactInfoData(
        full_name: contact.fullName ?? "",
        first_name: contact.firstName ?? "",
        last_name: contact.lastName ?? "",
        address: contact.address ?? "",
        thumbnail: contact.thumbnail.toSmsPhotoInfoData(),
        photo: contact.photo.toSmsPhotoInfoData(),
      );
    }
    return SmsContactInfoData(
      full_name: "",
      first_name: "",
      last_name: "",
      address: "",
      thumbnail: SmsPhotoInfoData(
        bytes: Uint8List.fromList([]),
      ),
      photo: SmsPhotoInfoData(
        bytes: Uint8List.fromList([]),
      ),
    );
  }
}

extension ExtensionTOnThreadToToTheasa on SmsMessage {
  SmsMessageInfoData toSmsMessageInfoData() {
    return SmsMessageInfoData(
      id: id ?? 0,
      thread_id: threadId ?? 0,
      sim: sim ?? 0,
      address: address ?? "",
      body: body ?? "",
      read: isRead ?? false,
      date: date ?? DateTime.now(),
      date_sent: dateSent ?? DateTime.now(),
    );
  }
}

extension ExtensionTOnThreadToToTheasas on List<SmsMessage> {
  List<SmsMessageInfoData> toSmsMessageInfoDatas() {
    return map((e) {
      return e.toSmsMessageInfoData();
    }).toList();
  }
}

extension ExtensionTOnThreadToToThe on SmsThread {
  SmsThreadInfoData toSmsThreadInfoData() {
    return SmsThreadInfoData(
      id: id ?? 0,
      address: address ?? "",
      contact: contact.toSmsContactInfoData(),
      messages: messages.toSmsMessageInfoDatas(),
    );
  }
}

extension ExtensionTOnThrefadToToThes on List<SmsThread> {
  List<SmsThreadInfoData> toSmsThreadInfoDatas() {
    return map((e) {
      return e.toSmsThreadInfoData();
    }).toList();
  }
}
