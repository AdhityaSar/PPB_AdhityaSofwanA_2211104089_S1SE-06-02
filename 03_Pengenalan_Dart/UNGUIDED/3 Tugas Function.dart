// Buatlah program Dart yang meminta input berupa sebuah bilangan bulat dari user,
// kemudian program akan mengecek apakah bilangan tersebut merupakan bilangan
// prima atau bukan.
// Sampel Input: 23
// Sampel Output: bilangan prima
// Sampel Input: 12
// Sampel Output: bukan bilangan prima

import 'dart:io';

bool isPrima(int number) {
  // Bilangan kurang dari 2 bukan bilangan prima
  if (number < 2) {
    return false;
  }
  // Mengecek pembagi dari 2 hingga akar kuadrat dari number
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false; // Jika ada pembagi, bukan bilangan prima
    }
  }
  return true; // Jika tidak ada pembagi, adalah bilangan prima
}

void main() {
  // Minta input dari pengguna
  print('Masukkan sebuah bilangan bulat: ');
  int bilangan = int.parse(stdin.readLineSync()!);

  // Mengecek apakah bilangan prima atau bukan
  if (isPrima(bilangan)) {
    print('$bilangan adalah bilangan prima');
  } else {
    print('$bilangan bukan bilangan prima');
  }
}