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

import 'package:example/main.dart';
import 'package:flutter/material.dart';

import 'package:general_flutter/text_to_speech/text_to_speech_core.dart';
import 'package:general_lib_flutter/extension/build_context.dart';
import 'package:general_lib_flutter/general_lib_flutter.dart';

class TextToSpeechPage extends StatefulWidget {
  const TextToSpeechPage({super.key});
  @override
  State<TextToSpeechPage> createState() => _TextToSpeechPageState();
}

class _TextToSpeechPageState extends State<TextToSpeechPage> {
  final GeneralLibraryTextToSpeechBaseFlutter text_to_speech = GeneralExampleMainApp.generalFlutter.text_to_speech;
  final TextEditingController textEditingController = TextEditingController();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      task();
    });
    // task();
  }

  @override
  void dispose() {
    text_to_speech.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  void task() {
    Future(() async {
      // wajib di run 1 x aja
      await text_to_speech.initialized();
      setState(() {});
      // bebas run dimanapun
    });
  }

  void speak() {
    handleFunction(
      onFunction: (context, statefulWidget) async {
        await text_to_speech.speak(text: textEditingController.text);
        setState(() {
          textEditingController.clear();
        });
      },
    );
  }

  // --- code
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: context.height,
            minWidth: context.width,
          ),
          child: Column(
            children: [
              SizedBox(
                height: context.mediaQueryData.padding.top,
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                  labelText: "Text To Speech",
                    hintText: "abcd",
                  
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          speak();
        },
        child: const Icon(Icons.voice_chat),
      ),
    );
  }
}
