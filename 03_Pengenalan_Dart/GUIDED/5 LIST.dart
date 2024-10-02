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