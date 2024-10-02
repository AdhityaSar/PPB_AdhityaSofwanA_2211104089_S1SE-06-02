Praktikum Pertemuan ke 3 </br>
Adhitya Sofwan Al Rasyid </br>
2211104089 </br>
# **PENGENALAN DART**

# GUIDED
## Apa itu Dart?
Dart adalah bahasa pemrograman yang open source dan general purpose. Dart dikembangkan oleh Google dan ditujukan untuk membuat aplikasi multiplatform seperti mobile, desktop, dan web. Dart merupakan bahasa modern dan berfitur lengkap. Dart juga memiliki banyak kemiripan dengan bahasa lain yang sudah banyak dikenal seperti Java, C#, Javascript, Swift, dan Kotlin.

Contoh Kode :
```
void main() {
    print(‘Praktikum Perangkat Bergerak’);
}
```
___

## Variabel
var adalah cara untuk mendeklarasikan variabel tanpa menentukan tipe datanya secara eksplisit. Dart akan secara otomatis menentukan tipe data berdasarkan nilai yang diberikan
```
void main(){
  String firstName = 'Praktikum';
  var lastName = 'PPB';
  final cuaca = 'Cerah';

  print("halo $firstName $lastName!, hari ini $cuaca");
}
```
![Variabel](<GUIDED/Dok/1 Variable.png>)

## IF STATEMENT
Untuk memproses suatu kondisi dalam program, kita dapat menggunakan ekspresi if. Jika hasil dari ekspresi tersebut bernilai true (benar), maka blok kode di dalam if akan dijalankan. Namun, jika kondisi tersebut tidak terpenuhi atau bernilai false (salah), kita dapat menggunakan ekspresi else untuk mengeksekusi blok kode alternatif

```
void main(){

  var open = 8;
  var close = 17;
  var now = 13;

  if (now == 12){
    print("toko sedang istirahat!");
  } else if (now > open&& now < close) {
    print("toko buka!");
  }
  else {
    print("toko tutup");
  }
}
```
![if statement](<GUIDED/Dok/2 If statement.png>)

## SWITCH CASE
Switch-case digunakan untuk memilih salah satu dari banyak blok kode untuk dieksekusi berdasarkan nilai suatu ekspresi. Dengan switch-case, program dapat memeriksa variabel dan menjalankan kode yang sesuai dengan nilai yang diberikan. Jika tidak ada case yang cocok, blok default dapat digunakan untuk menangani nilai yang tidak terduga.
```
void main(){
  
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
}
```
![switch case](<GUIDED/Dok/3 Switch Case.png>)

## LOOPING
Secara umum, terdapat dua cara untuk melakukan looping di dart, yaitu menggunakan for loop dan while loop.
### for loop
For loop digunakan untuk mengulangi suatu blok kode dengan jumlah perulangan yang sudah ditentukan.
### while loop
While loop digunakan ketika jumlah iterasi belum pasti, dan perulangan akan berlangsung selama kondisi yang diberikan bernilai true.
```
void main(){
  // For loop untuk mencetak angka 1 sampai 5
  for (int i = 1; i <= 5; i++) {
  print(i);
  }

  // While loop untuk mencetak angka 1 sampai 5
  int j = 1;  // inisialisasi variabel
  while (j <= 5) {
  print('Angka: $j');
  j++; // Increment untuk menghindari loop tak berujung
  }
}
```
![looping](<GUIDED/Dok/4 Looping.png>)
## LIST
List adalah tipe data yang digunakan untuk merepresentasikan koleksi nilai yang terurut. List dapat berisi elemen-elemen dengan tipe data yang sama atau berbeda. List dapat diinisialisasi dengan nilai-nilai yang diberikan, atau dapat dibuat kosong dan kemudian    diisi kemudian.

### Fixed Length List
- Tidak dapat diubah ukurannya setelah dibuat.
- Elemen di dalamnya bisa diubah, tetapi kita tidak bisa menambah atau menghapus elemen setelah list tersebut diinisialisasi dengan ukuran tetap.
### Growable List
Gunakan growable list apabila memiliki banyak object yang tidak menentu atau banyaknya object yang terus bertambah.
```
void main(){
  // Membuat fixed-length list dengan panjang 3
 List<int> fixedList = List.filled(3, 0); // List dengan 3 elemen, semua diinisialisasi ke 0

 fixedList[0] = 10;
 fixedList[1] = 20;
 fixedList[2] = 30;

 print('Fixed Length List: $fixedList'); // Output: [10, 20, 0, 0, 0]

 // Menambah atau menghapus elemen tidak diperbolehkan
 // fixedList.add(30); // Ini akan menimbulkan error
 // fixedList.removeAt(0); // Ini juga akan menimbulkan error

 // Membuat growablelist
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
}
```
![list](<GUIDED/Dok/5 List.png>)

## FUNGSI
Fungsi adalah blok kode yang dapat dijalankan untuk melakukan tugas tertentu dan, jika diperlukan, dapat mengembalikan nilai. Fungsi dalam Dart juga dapat menerima parameter atau argumen sebagai input.
```
void main(){
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
```
![fungsi](<GUIDED/Dok/6 Fungsi.png>)
# =======================

# UNGUIDED
## 1. Tugas Percabangan (Branching)

```
import 'dart:io';

String evaluasiNilai(int nilai) {
  if (nilai > 70) {
    return "Nilai A";
  } else if (nilai > 40 && nilai <= 70) {
    return "Nilai B";
  } else if (nilai > 0 && nilai <= 40) {
    return "Nilai C";
  } else {
    return ""; // Teks kosong jika tidak memenuhi kondisi
  }
}

void main() {
  // Minta input dari pengguna
  print('Masukkan nilai: ');
  int nilai = int.parse(stdin.readLineSync()!);

  // Evaluasi nilai dan tampilkan hasilnya
  String hasil = evaluasiNilai(nilai);
    print('$nilai merupakan $hasil');
}
```


## 2. Tugas Looping (Perulangan)
```
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
```
![tugas looping](<UNGUIDED/Dok/2 Tugas looping.png>)

## 3. Tugas Function
```
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
```
![alt text](<UNGUIDED/Dok/3 Tugas function.png>)