import 'dart:io';

import 'package:path_provider/path_provider.dart';

class IO {

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }
  Future<File> _localFile(String fileName) async {
    final path = await _localPath;
    return File('$path/$fileName');
  }
  Future<File> writeFile({String fileName, String value}) async {
    final file = await _localFile(fileName);
    return file.writeAsString('$value');
  }
  Future saveUserID(String userID) async {
    final file = await _localFile(FileName.userId);
    print("user ID: $userID");
    file.writeAsString(userID);
  }

  Future<String> readUserID() async {
    try {
      final file = await _localFile(FileName.userId);
      String content = await file.readAsString();
      return content;
    } catch (e) {
      return null;
    }
  }
}
class FileName{
  static final String accessToken = 'a35sbderr.txt';
  static final String userId = 'AKG3455KHH44.txt';
  static final String configDarkMode = 'AGGldnfg453.txt';
}



