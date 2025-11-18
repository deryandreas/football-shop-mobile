# football_shop

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


<!-- TUGAS INDIVIDU KE 7 -->

1. Widget Tree dan Hubungan Parent-Child
Widget Tree dalam Flutter dapat dibayangkan sebagai denah arsitektur antarmuka pengguna, di mana setiap elemen yang kita lihat di layar—mulai dari tata letak hingga teks terkecil—diwakili oleh sebuah widget. Konsep hubungan parent-child adalah mekanisme fundamental dari pohon ini; widget parent (induk) bertanggung jawab untuk menampung, memposisikan, dan memberikan batasan kepada satu atau lebih widget child (anaknya). Sebagai contoh, Column bertindak sebagai induk yang menata InfoCard atau ItemCard yang menjadi anaknya, memastikan mereka tersusun rapi secara vertikal sesuai dengan aturan yang ditetapkan oleh Column tersebut.

2. Semua Widget yang Digunakan dan Fungsinya
Dalam proyek ini, sejumlah widget bekerja sama untuk membentuk tampilan aplikasi. Sebagai kerangka utamanya, MaterialApp memberikan konteks desain menyeluruh, sementara Scaffold menyediakan struktur dasar halaman seperti AppBar untuk judul. Konten diorganisir menggunakan widget tata letak seperti Row untuk menyusun informasi horizontal (NPM, Nama, Kelas) dan Column untuk susunan vertikal, dengan SizedBox dan Padding yang menjaga jarak antar elemen. Elemen informatif dibuat dalam Card (via InfoCard), sedangkan menu utama interaktif ditampilkan dalam GridView.count. Setiap item menu, ItemCard, menggabungkan Material untuk visualisasi dan InkWell untuk menangkap sentuhan, menampilkan Icon dan Text, yang ketika disentuh akan memicu notifikasi singkat menggunakan SnackBar.

3. Fungsi MaterialApp dan Mengapa Widget Root?
Fungsi utama MaterialApp adalah untuk menjadi "wadah" yang menyuntikkan seluruh prinsip Material Design ke dalam aplikasi, menyediakan layanan penting seperti sistem penentuan rute (navigasi antar halaman) dan skema tema global. Widget ini hampir selalu ditempatkan sebagai widget root karena ia menyediakan konteks global yang esensial dan diwariskan oleh widget di bawahnya, memastikan semua komponen Material Design seperti Scaffold memiliki informasi tema, arah teks, dan resource lain yang harus mereka ikuti agar dapat dirender dengan benar dan konsisten.

4. Perbedaan StatelessWidget dan StatefulWidget
Perbedaan mendasar antara keduanya terletak pada kemampuan untuk mengelola data yang berubah seiring waktu atau interaksi pengguna (state). StatelessWidget, seperti yang digunakan pada MyHomePage atau ItemCard, cocok untuk elemen UI yang tampilannya tidak akan pernah berubah setelah dibangun; ia hanya bergantung pada data yang diberikan dari luar dan hanya memiliki metode build. Sebaliknya, StatefulWidget digunakan ketika elemen UI harus diperbarui—misalnya, sebuah counter yang bertambah atau checkbox yang berganti status—memerlukan objek State terpisah, yang dapat diinstruksikan untuk menggambar ulang dirinya dengan memanggil setState().

5. Apa itu BuildContext dan Penggunaannya di build?
BuildContext berfungsi sebagai referensi alamat yang unik untuk lokasi suatu widget di dalam Widget Tree yang sedang aktif. Keberadaannya sangat krusial karena ia memungkinkan widget untuk "mengetuk pintu" dan berinteraksi dengan layanan atau data yang disediakan oleh widget leluhur di atasnya. Saat dipanggil di dalam metode build(BuildContext context), parameter context ini menjadi kunci untuk melakukan tindakan kontekstual, seperti mencari ScaffoldMessenger.of(context) untuk menampilkan SnackBar atau menggunakan Navigator.of(context) untuk berpindah halaman.

6. Konsep "Hot Reload" dan "Hot Restart"
Hot Reload adalah fitur pengembangan cepat yang memungkinkan pengembang melihat perubahan kode dalam hitungan detik; yang membuatnya revolusioner adalah kemampuannya untuk menyuntikkan kode baru langsung ke dalam Virtual Machine yang sedang berjalan tanpa menghilangkan state aplikasi saat ini (misalnya, jika kita sedang berada di halaman ketiga, kita tetap di sana). Sementara itu, Hot Restart adalah proses yang lebih menyeluruh; ia menghentikan sepenuhnya dan memulai ulang aplikasi dari awal, menyebabkan seluruh state (termasuk variabel dan posisi navigasi) disetel ulang ke nilai default, menjadikannya pilihan ketika perubahan dilakukan pada variabel global atau state inisial.


<!-- TUGAS INDIVIDU KE 8 -->

1. Navigator.push() menambahkan halaman baru sehingga pengguna masih bisa kembali ke halaman sebelumnya, sedangkan Navigator.pushReplacement() mengganti halaman aktif sehingga pengguna tidak dapat kembali. Dalam aplikasi Football Shop, push() cocok untuk membuka halaman Add Product atau View Product, sementara pushReplacement() lebih tepat untuk navigasi menuju Home agar halaman sebelumnya tidak disimpan.

2. Hierarki widget seperti Scaffold, AppBar, dan Drawer dimanfaatkan untuk menciptakan struktur halaman yang seragam; Scaffold menjadi kerangka utama, AppBar memberikan judul yang konsisten, dan Drawer menyediakan navigasi yang mudah diakses, sehingga setiap halaman tampil rapi dan memiliki pola tampilan yang sama.

3. Widget seperti Padding, SingleChildScrollView, dan ListView membantu membuat form lebih rapi, mudah di-scroll, dan tidak overflow; misalnya Padding memberi ruang antar-elemen, SingleChildScrollView memastikan form tetap dapat di-scroll saat keyboard muncul, dan ListView menyusun elemen vertikal secara responsif.

4. Penyesuaian warna tema dilakukan dengan mengatur ThemeData agar warna AppBar, tombol, dan elemen antarmuka konsisten dengan identitas Football Shop, sehingga aplikasi memiliki tampilan yang seragam dan mencerminkan karakter brand secara menyeluruh.

<!-- TUGAS INDIVIDU 9 -->

1. Model Dart untuk Data JSON

Kita perlu membuat model Dart (seperti kelas ShopEntry) saat bekerja dengan data JSON agar mendapatkan validasi tipe (Type Safety) dan Null Safety yang kuat, sebab Dart adalah bahasa yang ketat dalam penanganan tipe data. Menggunakan model memungkinkan compiler untuk memverifikasi struktur data saat compile time, mencegah runtime crash akibat ketidakcocokan tipe, dan menyederhanakan pemeliharaan (maintainability), karena perubahan struktur data API hanya perlu diurus pada satu file model daripada di seluruh codebase yang mengakses Map<String, dynamic> mentah.

2. Fungsi Package http dan CookieRequest

Package http berfungsi sebagai fondasi untuk semua komunikasi jaringan HTTP (GET, POST, dll.) antara Flutter dan Django, menyediakan mekanisme dasar untuk mengirim dan menerima data. Sementara itu, CookieRequest adalah wrapper khusus di atas http yang secara spesifik bertanggung jawab untuk mengelola cookie sesi otentikasi. Peran http bersifat umum untuk komunikasi, sedangkan CookieRequest berperan vital dalam menjaga kontinuitas sesi dengan secara otomatis menangkap cookie dari respons login dan melampirkannya pada setiap permintaan terotentikasi berikutnya.

3. Alasan CookieRequest Perlu Dibagikan

Instance CookieRequest perlu dibagikan ke semua komponen aplikasi Flutter (melalui State Management seperti Provider) karena ia adalah penyimpan sesi (session keeper) untuk otentikasi pengguna. Ketika user berhasil login, cookie sesi (sessionid) disimpan di dalam instance CookieRequest tersebut. Jika setiap komponen membuat instance baru, informasi cookie sesi akan hilang, dan Django akan menganggap user tersebut belum terotentikasi pada setiap permintaan, sehingga sesi tidak akan bertahan (persisten).

4. Konfigurasi Konektivitas Flutter ke Django

Konfigurasi konektivitas ini esensial karena Flutter (berjalan di emulator) dan Django (berjalan di host) berada pada domain yang berbeda. Kita menambahkan 10.0.2.2 ke ALLOWED_HOSTS Django agar server mengenali emulator Android sebagai host yang valid, sementara mengaktifkan CORS dan mengatur cookie SameSite memungkinkan permintaan cross-origin dan memastikan cookie sesi dapat dikirim melalui koneksi HTTP lokal. Tanpa konfigurasi ini, aplikasi akan menghadapi error HTTP 400 Bad Request dari Django atau error koneksi jaringan, dan sesi otentikasi akan gagal dipertahankan.

5. Mekanisme Pengiriman Data (Input hingga Tampilan)

Mekanisme ini dimulai dari user menginput data pada form Flutter, di mana data tersebut kemudian diubah menjadi string JSON. String JSON ini dikirim melalui permintaan HTTP POST (menggunakan CookieRequest jika memerlukan otentikasi) ke endpoint Django. Di sisi Django, view akan mem-parsing JSON, memvalidasi data menggunakan serializer, menyimpannya ke database, dan merespons dengan status sukses (misalnya, 201 Created). Setelah respons diterima oleh Flutter, aplikasi memperbarui state lokal atau mengambil data terbaru dari server, memungkinkan data produk yang baru disimpan untuk ditampilkan pada widget daftar.

6. Mekanisme Autentikasi (Login, Register, Logout)

Mekanisme otentikasi diawali dengan user mengirim kredensial pada halaman Register; Django memvalidasi dan membuat akun baru. Pada Login, Flutter mengirim kredensial melalui CookieRequest ke /auth/login/. Jika valid, Django menggunakan auth_login() untuk membuat cookie sesi yang secara otomatis ditangkap dan disimpan oleh instance CookieRequest. Sesi ini membuat user terotentikasi, dan state aplikasi Flutter berubah untuk menampilkan menu yang relevan. Proses Logout hanya perlu mengirim permintaan ke /auth/logout/ yang menghapus sesi di Django dan cookie di CookieRequest, sehingga user kembali ke kondisi tidak terotentikasi.

7. Implementasi Checklist (Step-by-Step)

Implementasi dimulai dengan Step 1: Backend Setup, yaitu mengonfigurasi Django (ALLOWED_HOSTS, CORS, cookie SameSite) dan memberikan izin Internet pada AndroidManifest.xml Flutter untuk memastikan konektivitas. Step 2: Model dan Komunikasi Dasar meliputi pembuatan endpoint JSON sementara di Django, penggunaan Quicktype untuk menghasilkan model Dart (ShopEntry), dan membuat fungsi fetch dasar. Step 3: Autentikasi diimplementasikan dengan membuat instance CookieRequest yang dibagikan, membuat view login/register di Django untuk menangani otentikasi sesi, dan memperbaiki bug getter pada widget (.title diganti .name) untuk menampilkan data yang benar dari model yang baru.