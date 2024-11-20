# TUGAS PENDAHULUAN

1. Jelaskan secara singkat fungsi SQLite dalam pengembangan aplikasi mobile!
2. Apa saja yang dimaksud dengan operasi CRUD? Berikan penjelasan singkat untuk masing-masing operasi!
3. Tuliskan kode SQL untuk membuat tabel bernama users dengan kolom berikut :
    - id (integer, primary key, auto increment)
    - name (text)
    - email (text)
    - createdAt (timestamp, default value adalah waktu sekarang)
4. Sebutkan langkah-langkah utama untuk menggunakan plugin sqflite di dalam Flutter!
5. Lengkapi kode berikut untuk membaca semua data dari tabel users menggunakan sqflite.
```
static Future<List<Map<String, dynamic>>> getUsers() async {
 final db = await SQLHelper.db();
 return db.query(__________);
}
```

# JAWABAN

1. SQLite berfungsi sebagai sistem manajemen basis data relasional. SQLite biasa digunakan pengembang untuk menyimpan data secara lokal di perangkat user tanpa koneksi internet.
2. CRUD adalah singkatan dari Create, Read, Update, dan Delete. Empat fungsi utama tersebut berfungsi sebagai berikut :
    - Create untuk membuat data baru ke basis data
    - Read untuk membuat atau mengambil data dari basis data
    - Update untuk mengubah data yang ada di basis data
    - Delete untuk menghapus data dari basis data
3. Kode SQL :
```
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
4. Langkah-langkahnya :
    - Tambahkan dependency `sqflite` dan `path` pada pubspec.yaml
    - Inisialisasi database dengan membuat class helper
    - Implementasikan fungsi CRUD pada class helper
    - Panggil fungsi pada UI

5. Kode lengkap :
```
static Future<List<Map<String, dynamic>>> getUsers() async {
  final db = await SQLHelper.db();
  return db.query('users');
}
```