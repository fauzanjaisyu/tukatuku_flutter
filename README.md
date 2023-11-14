# **TukaTuku Flutter**

**Daftar isi :**<br/>
[Tugas 7](#tugas-7)<br/>
[Tugas 8](#tugas-8)

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

# **Tugas 8**
## **Perbedaan antara Navigator.push() dan Navigator.pushReplacement()**

Navigator.push(): `Navigator.push()` digunakan untuk menambahkan halaman baru ke tumpukan navigasi. `Navigator.push()` menempatkan halaman baru di atas halaman saat ini dalam tumpukan navigasi. Contoh penggunaan `Navigator.push()` adalah ketika ingin menambahkan halaman baru dan memungkinkan pengguna untuk kembali ke halaman sebelumnya dengan melakukan `Navigator.pop()`.

`Navigator.pushReplacement()` digunakan untuk mengganti halaman saat ini dengan halaman baru. `Navigator.pushReplacement()` menghapus halaman saat ini dari tumpukan navigasi dan menambahkan halaman baru di atasnya. Fungsi ini berguna ketika ingin mengganti halaman saat ini dengan halaman baru dan tidak ingin pengguna kembali ke halaman sebelumnya saat menekan tombol kembali.Contoh pengguanaan `Navigator.pushReplacement()` adalah ketika ingin mengimplementasikan layar masuk (login) di mana setelah login, maka akan mengganti layar login dengan layar beranda dan tidak ingin pengguna kembali ke layar login saat menekan tombol kembali.

## **Layout widget pada Flutter dan konteks penggunaannya masing-masing**

* Container : digunakan sebagai wadah untuk widget lainnya. Container memberikan kontrol yang luas terhadap tampilan dan dekorasi, seperti warna latar belakang, border, padding, dan margin.

* Row dan Column : Row dan Column digunakan untuk mengatur widget secara horizontal (untuk Row) dan vertikal (untuk Column). Keduanya memungkinkan penempatan dan pengaturan widget secara sejajar sesuai sumbu yang ditentukan.

* Padding dan Margin : Padding digunakan untuk menambahkan ruang di sekitar child widget di dalamnya. Margin digunakan untuk menambahkan ruang di luar widget saat ditempatkan di dalam tata letak yang sesuai.

* ListView dan GridView : ListView menampilkan daftar item secara vertikal atau horizontal. GridView menampilkan item dalam bentuk grid dengan jumlah baris dan kolom yang dapat disesuaikan.

## **Elemen input yang digunakan pada form** 

Pada tugas kali ini saya menggunakan elemen input `TextFormField`. `TextFormField` saya gunakan pada form untuk memberikan *textfield* yang dapat divalidasi.

## **Penerapan *Clean Architecture* pada Flutter*

*Clean Architecture* dapat diterapkan pada Flutter dengan cara memisahkan kode menjadi beberapa bagian. Hal ini bertujuan untuk memudahkan pengujian, *maintenance*, dan pembacaan kode. Seperti memisahkan kode mana saja yang digunakan untuk mengolah tampilan, mengolah data, mengolah widget yang ada.

## **Cara pengimplementasian Tugas 8**

1. Pertama-tama saya melakukan pemisahan beberapa bagian kode untuk memudahkan *maintenance* kedepannya dan menggabungkan berkas yang bersesuaian ke dalam sebuah folder yang sama.

2. Membuat `left_drawer.dart` yang bertujuan untuk menampilkan fitur apa saja yang dapat digunakan pada aplikasi TukaTuku.

3. Membuat class `Stuff` pada `shop_card.dart` yang bertujuan sebagai constructur pada barang-barang yang akan ditambahkan pengguna pada form.

4. Membuat `shoplist_form.dart` yang bertujuan untuk menampilkan form yang dapat diisi oleh pengguna dan dapat disimpan sebagai sebuah item.

5. Membuat `stuff_list.dart` yang bertujuan untuk menampilkan barang-barang yang ditambahkan oleh pengguna pada form yang tertera.

6. Melakukan routing dengan `Navigator` pada tombol-tombol yang diperlukan seperti tombol pada card yang ada di `menu.dart` dan pada drawer kepada screens yang bersesuaian.