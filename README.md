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