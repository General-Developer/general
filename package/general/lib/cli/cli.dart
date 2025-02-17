import 'package:general/api/api.dart';
import 'package:general_lib/fork/mason_logger/mason_logger.dart';
import 'package:general_lib/general_lib.dart';
import 'package:io_universe/io_universe.dart';

/// UncompleteDocumentation
final Logger logger = Logger();

/// UncompleteDocumentation
Future<void> generalLibraryCli({
  required List<String> argsRaw,
}) async {
  final Args args = Args(argsRaw);
  final GeneralLibraryApi generalLibraryApi = GeneralLibraryApi();

  bool isInteractive = true;
  if (Platform.environment["no_interactive"] == "true") {
    isInteractive = false;
  }

  String command = (args.arguments.firstOrNull ?? "").toLowerCase();
  List<String> commands = [
    "init",
    "setup",
    "patch",
  ];
  commands.sort();
  if (commands.contains(command) == false) {
    if (isInteractive) {
      command = logger.chooseOne(
        "Pilih",
        choices: commands,
        display: (choice) {
          return choice.toUpperCaseFirstData();
        },
      );
    } else {
      print("Please use command: ${commands.join("\n")}");
      exit(1);
    }
  }

  if (command == "init") {
    await generalLibraryApi
        .create(newName: ".", directoryBase: Directory.current)
        .listen((event) {
      printed(event);
    }).asFuture();
    exit(0);
  }

  if (command == "setup") {
    await generalLibraryApi
        .setup(directoryBase: Directory.current)
        .listen((event) {
      printed(event);
    }).asFuture();
    exit(0);
  }
  if (command == "patch") {
    await generalLibraryApi
        .patch(directoryBase: Directory.current)
        .listen((event) {
      printed(event);
    }).asFuture();
    exit(0);
  }
  print("not implemented");
  exit(0);
}

/// UncompleteDocumentation
Progress progress = logger.progress("message");

/// UncompleteDocumentation
void printed(GeneralLibraryApiStatus event) {
  if (event.serverUniverseApiStatusType ==
      GeneralLibraryApiStatusType.progress_start) {
    progress.cancel();
    progress = logger.progress(event.value);
    return;
  }
  if (event.serverUniverseApiStatusType ==
      GeneralLibraryApiStatusType.progress) {
    progress.update(event.value);
    return;
  }
  if (event.serverUniverseApiStatusType ==
      GeneralLibraryApiStatusType.progress_complete) {
    progress.complete(event.value);

    // progress.cancel();
    return;
  }
  if (event.serverUniverseApiStatusType == GeneralLibraryApiStatusType.succes) {
    logger.success(event.value);
    return;
  }
  if (event.serverUniverseApiStatusType == GeneralLibraryApiStatusType.failed) {
    logger.err(event.value);
    return;
  }

  logger.info(event.value);
}
