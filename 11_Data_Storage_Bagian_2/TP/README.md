# TUGAS PENDAHULUAN

1. Firebase dan Fitur Utamanya <br>
    - Jelaskan apa yang dimaksud dengan Firebase.
    - Sebutkan tiga fitur utama Firebase beserta fungsinya masing-masing.
2. Notification Message vs. Data Message <br>
Jelaskan perbedaan antara Notification Message dan Data Message pada Firebase Cloud Messaging. Berikan contoh penggunaan untuk masing-masing jenis pesan.
3. FCM Token <br>
Apa yang dimaksud dengan Firebase Cloud Messaging (FCM) Token, dan mengapa token ini penting untuk mengirim notifikasi ke aplikasi?
4. Penanganan Notifikasi oleh FCM <br>
Jelaskan bagaimana Firebase Cloud Messaging menangani notifikasi dalam kondisi aplikasi berikut:
    - Saat aplikasi berada di foreground.
    - Saat aplikasi berada di background.
    - Saat aplikasi dalam kondisi terminated.

# JAWABAN

1. Firebase adalah platform yang dikembangkan oleh Google untuk membantu pengembang dalam membangun dan mengelola aplikasi mobile dan web. Tiga fitur utamanya ialah :
    - Firebase Realtime Database
    - Firebase Authentication
    - Firebase Cloud Messaging (FCM)
2. Notification message menampilkan pemberitahuan langsung di perangkat pengguna, sementara Data Message digunakan untuk mengirimkan data yang harus diproses oleh aplikasi. Notification Message lebih cocok untuk notifikasi yang ingin segera dilihat pengguna, sedangkan Data Message lebih sering digunakan untuk komunikasi data antar perangkat tanpa interaksi langsung. Contoh penggunaan Notification message yaitu pengguna menerima notifikasi berupa pesan teks yang mengatakan "Ada pesan baru dari temanmu". Contoh penggunaan data message yakni pengguna menerima data tentang pembaruan aplikasi atau data statistik yang tidak langsung ditampilkan sebagai notifikasi, namun diproses oleh aplikasi di latar belakang.
3. FCM Token adalah sebuah identifikasi unik yang diberikan oleh Firebase kepada setiap perangkat yang menginstal aplikasi dan terdaftar untuk menerima notifikasi. FCM Token penting karena berfungsi sebagai pengenal perangkat, yang memungkinkan server untuk mengirimkan notifikasi atau data ke perangkat tertentu. Tanpa token, server tidak akan tahu ke perangkat mana notifikasi atau data perlu dikirim.
4. - Saat di foreground : FCM akan mengirimkan notifikasi melalui handler atau listener yang sudah diterapkan dalam aplikasi. Firebase tidak menampilkan notifikasi sistem secara otomatis, tetapi aplikasi dapat menangani data tersebut, seperti menampilkan alert atau update UI sesuai dengan kebutuhan.
    - Saat di background : FCM akan menampilkan notifikasi sistem secara otomatis kepada pengguna. Pengguna dapat melihat notifikasi tersebut di status bar atau notifikasi center. Namun, aplikasi tetap dapat menangani data dari pesan tersebut jika diperlukan setelah pengguna membuka aplikasi.
    - Saat di kondisi terminated : FCM akan mengirimkan pesan notifikasi sistem yang ditampilkan di layar kunci atau notifikasi center. Begitu aplikasi dibuka kembali, aplikasi dapat mengambil data notifikasi dan melanjutkan logika yang sesuai.