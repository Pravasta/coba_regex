import 'dart:io';
import 'package:path/path.dart' as path;

class SaveToJson {
  static save(String jsonContent) {
    // Simpan ke file json
    final String nameFile = 'result.json';
    final String trackFile = path.join('bin/result/$nameFile');

    File file = File(trackFile);

    file.writeAsString(jsonContent).then((value) {
      print('Sukses');
    }).catchError((err) {
      print('Gagal');
    });
  }
}
