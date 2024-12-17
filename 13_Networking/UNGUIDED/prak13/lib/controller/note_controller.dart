import 'package:get/get.dart';

class Note {
  final String title;
  final String description;

  Note({
    required this.title,
    required this.description,
  });
}

class NoteController extends GetxController {
  // List untuk menyimpan catatan
  var notes = <Note>[].obs;

  // Tambah catatan
  void addNote(String title, String description) {
    notes.add(Note(title: title, description: description));
  }

  // Hapus catatan berdasarkan index
  void removeNote(int index) {
    notes.removeAt(index);
  }
}