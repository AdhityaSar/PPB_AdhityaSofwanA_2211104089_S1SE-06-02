// Buatlah sebuah program dalam Dart yang menampilkan piramida bintang dengan
// menggunakan for loop. Panjang piramida ditentukan oleh input dari user.

import 'dart:io';

void main() {
  // Minta input dari pengguna
  print('Masukkan tinggi piramida: ');
  int tinggi = int.parse(stdin.readLineSync()!);

  // Menggambar piramida
  for (int i = 1; i <= tinggi; i++) {
    // Mencetak spasi untuk memusatkan piramida
    for (int j = 1; j <= tinggi - i; j++) {
      stdout.write(' ');
    }
    // Mencetak bintang
    for (int k = 1; k <= (2 * i - 1); k++) {
      stdout.write('*');
    }
    // Pindah ke baris berikutnya
    print('');
  }
}