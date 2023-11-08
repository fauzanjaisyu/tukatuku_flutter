# **TukaTuku Flutter**

**Muhammad Fauzan Jaisyurrahman**<br/>
**2206814040**<br/>
**PBP C**<br/>

# **Tugas 7**
## **Perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter**

*Stateless Widget* adalah widget yang nilai State-nya tidak dapat berubah (immutable) maka widget tersebut lebih bersifat statis dan memiliki interaksi yang terbatas.

*Stateful Widget* adalah kebalikan dari StatelessWidget, widget ini dapat berubah rubah state-nya dan widget ini memiliki interaksi yang tidak terbatas.

## **Widget yang digunakan untuk menyelesaikan tugas ini dan penjelasan fungsinya**

MyHomePage (Stateless Widget): Ini adalah halaman utama aplikasi. Widget ini memiliki daftar item yang ditampilkan dalam GridView dan AppBar di bagian atas halaman.

Item (Class): Kelas yang digunakan untuk merepresentasikan item yang akan ditampilkan dalam daftar. Setiap item memiliki nama dan ikon (dalam bentuk IconData).

ShopCard (Stateless Widget): Widget yang digunakan untuk menampilkan setiap item dalam daftar. Masing-masing ShopCard memiliki ikon dan teks yang sesuai, serta memberikan umpan balik saat diklik.

MyApp (Stateless Widget): Ini adalah root widget dari aplikasi. Widget ini menentukan tema (theme) dan menginisialisasi halaman utama MyHomePage.

main Function: Fungsi utama yang dijalankan saat aplikasi dimulai. Fungsi ini memanggil runApp dengan widget MyApp sebagai widget root.

MaterialApp: Widget yang digunakan untuk mengatur aplikasi dan tema (theme) yang akan digunakan.

Scaffold: Widget yang mengatur kerangka (framework) halaman dengan AppBar di bagian atas dan isi (body) di bawahnya.

GridView.count: Widget yang digunakan untuk menampilkan daftar item dalam bentuk grid dengan jumlah kolom yang ditentukan.

InkWell: Widget yang memberikan respons terhadap sentuhan (tap) pengguna.

SnackBar: Widget yang muncul saat item di ShopCard diklik untuk memberikan pesan umpan balik.

Berbagai widget lainnya seperti Text, Icon, ElevatedButton, Column, Container, Padding, dan lain-lain digunakan untuk mengatur tampilan dan tata letak halaman.

## **Cara pengimplementasian tugas 7**

1. Membuat projek flutter baru pada direktori yang dipilih
2. Melakukan inisiasi repository pada gitHub
3. Merapikan struktur proyek agar kode lebih mudah dipahami dengan memisahkan main dengan menu
4. Membuat widget-widget yang diperlukan pada tugas 7
5. Menambahkan atribut color untuk mengerjakan bonus (memberikan warna yang berbeda pada tombol)