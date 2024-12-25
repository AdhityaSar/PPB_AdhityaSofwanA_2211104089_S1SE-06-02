# TUGAS PENDAHULUAN

1. Sebutkan dan jelaskan dua jenis utama Web Service yang sering digunakan dalam pengembangan aplikasi.
2. Apa yang dimaksud dengan Data Storage API, dan bagaimana API ini mempermudah pengelolaan data dalam aplikasi?
3. Jelaskan bagaimana proses kerja komunikasi antara klien dan server dalam sebuah Web Service, mulai dari permintaan (request) hingga tanggapan (response).
4. Mengapa keamanan penting dalam penggunaan Web Service, dan metode apa saja yang dapat diterapkan untuk memastikan data tetap aman?

# JAWABAN

1. dua jenis web service yang sering digunakan ada :
    - SOAP (Simple Object Access Protocol)
    yaitu sebuah protokol berbasis XML yang digunakan untuk bertukar data antara aplikasi melalui HTTP atau protokol lainnya. SOAP memiliki standar yang ketat, sehingga lebih aman dan andal untuk transaksi kompleks, seperti layanan keuangan atau sistem pemerintahan. Namun sayangnya SOAP lebih berat dibanding alternatifnya karena format XML-nya.
    - REST (Representational State Transfer)
    REST adalah arsitektur yang menggunakan protokol HTTP secara langsung untuk berkomunikasi antara klien dan server. REST lebih ringan dan fleksibel dibanding SOAP karena dapat mengembalikan data dalam berbagai format, seperti JSON atau XML. REST sering digunakan untuk aplikasi modern, termasuk API layanan web, karena kesederhanaannya.

2. Data Storage API adalah antarmuka yang mempermudah penyimpanan dan pengelolaan data di aplikasi, seperti operasi CRUD, baik di database lokal maupun cloud. API ini menyederhanakan akses, meningkatkan efisiensi, dan mendukung skalabilitas aplikasi tanpa menangani detail teknis penyimpanan.

3. Proses kerja komunikasi antara klien dan server dalam sebuah Web Service :
    - Request : klien mengirim permintaan ke server melalui protokol HTTP/HTTPS, berisi URL endpoint, metode (GET, POST, dll.), dan data (jika diperlukan).
    - Processing : server menerima permintaan, memprosesnya sesuai logika atau data yang diminta.
    - Response : server mengirim tanggapan ke klien berupa data atau status keberhasilan/gagal.

4. Karena keamanan Web Service melindungi data dan sistem dari akses ilegal dan tidak sah. Metode yang dapat diterapkan untuk memastikan data tetap aman meliputi HTTPS (enkripsi data), autentikasi (API keys, OAuth), validasi input, rate limiting, dan firewall.