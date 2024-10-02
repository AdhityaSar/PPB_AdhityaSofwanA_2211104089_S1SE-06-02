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