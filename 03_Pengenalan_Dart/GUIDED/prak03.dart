void main(){

// VARIABLE

  String firstName = 'Praktikum';
  var lastName = 'PPB';
  final cuaca = 'Cerah';


  var open = 8;
  var close = 17;
  var now = 13;

// IF STATEMENT

  if (now == 12){
    print("toko sedang istirahat!");
  } else if (now > open&& now < close) {
    print("toko buka!");
  }
  else {
    print("toko tutup");
  }

  print("halo $firstName $lastName!, hari ini $cuaca");


// SWITCH CASE

var day = 'a';

switch (day){
  case 'a':
    print("Nilai sangat bagus!");
      break;
  case 'b':
    print("Nilai bagus!");
    break;
  case 'c':
    print("Nilai cukup");
    break;

  default:
    print("Nilai tidak tersedia");
  }

// LOOPING
// For loop untuk mencetak angka 1 sampai 5
  for (int i = 1; i <= 5; i++) {
  print(i);
  }

// LIST
// Membuat fixed-length list dengan panjang 3
 List<int> fixedList = List.filled(3, 0); // List dengan 3 elemen, semua diinisialisasi ke 0

 fixedList[0] = 10;
 fixedList[1] = 20;
 fixedList[2] = 30;

 print('Fixed Length List: $fixedList'); // Output: [10, 20, 0, 0, 0]

 // Menambah atau menghapus elemen tidak diperbolehkan
 // fixedList.add(30); // Ini akan menimbulkan error
 // fixedList.removeAt(0); // Ini juga akan menimbulkan error

  List<int> growableList = [];

  // Menambahkan elemen baru ke dalam list
  growableList.add(10);
  growableList.add(20);
  growableList.add(30);

  print('Growable List setelah menambah elemen: $growableList'); // Output: [10, 20, 30]

  // Menambahkan lebih banyak elemen
  growableList.add(40);
  growableList.add(50);

  print(growableList); // Output: [10, 20, 30, 40, 50]

  // Menghapus elemen dari list
  growableList.remove(20);

  print('Growable List setelah menghapus elemen: $growableList'); // Output: [10, 30, 40, 50]


// FUNGSI
// Fungsi tanpa nilai kembalian
void cetakPesan(String pesan) {
  print(pesan); // Mencetak pesan
}

// Fungsi dengan nilai kembalian
int kaliAngka(int a, int b) {
  return a * b; // Mengembalikan hasil perkalian
}

// Memanggil fungsi dan menyimpan hasilnya
  int hasil = kaliAngka(4, 5);
// Menampilkan hasil
  print('Hasil kali: $hasil');
// Memanggil fungsi tanpa nilai kembalian
  cetakPesan('Halo, Dart!');
}