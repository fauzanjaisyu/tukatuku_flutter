# **TukaTuku Flutter**

**Daftar isi :**<br/>
[Tugas 7](#tugas-7)<br/>
[Tugas 8](#tugas-8)<br/>
[Tugas 9](#tugas-9)

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

# **Tugas 9**
## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Ya, hal ini memungkinkan. JSON (JavaScript Object Notation) adalah format yang umum digunakan untuk pertukaran data di berbagai platform. Kita dapat mengambil data JSON dan menggunakan teknik pemrosesan data dinamis untuk mengekstrak informasi yang diperlukan tanpa harus membuat model terlebih dahulu. Namun hal ini belum tentu lebih baik tergantung kebutuhan dan tujuan. Jika ingin mengambil data sederhana maka tidak membuat model terlebih dahulu tidak apa. Namun jika data JSON memerlukan kompleksitas yang lebih tinggi, maka model dapat membantu dengan pemrosesan data yang lebih rumit dan efisien.

## Fungsi dari CookieRequest dan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter
`CookieRequest` dalam konteks pembuatan aplikasi Flutter adalah sebuah objek atau kelas yang bertanggung jawab untuk menangani request HTTP yang membutuhkan penggunaan cookie. Cookie biasanya digunakan untuk menyimpan informasi otentikasi atau sesi di sisi server. Oleh karena itu, `CookieRequest` perlu dibagikan kepada seluruh komponen di aplikasi Flutter agar aplikasi dapat memiliki akses kepada data pengguna yang sama.

## Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter
1. Melakukan request HTTP menggunakan `http.get()` dengan URL yang dituju
2. Mendapatkan respons dalam bentuk JSON
3. JSON kemudian di decode menggunakan `jsonDecode()`
4. Mengonversi data yang sudah di decode menjadi objek yang sesuai dengan model
5. Menampilkan data yang ada menggunakan `ListView`

##  Mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter
1. User diarahkan ke halaman `login` untuk input data user
2. Ketika tombol `login` ditekan, maka akan mengirim HTTP request kepada URL proyek Django
3. Kemudian dilakukan autentikasi pada `views.py` yang ada pada `authentication` proyek Django
4. Ketika autentikasi berhasil, maka user akan diarahkan ke halaman `MyHomePage`

## Widget yang digunakan 
`Scaffold`: Digunakan sebagai kerangka atau struktur dasar halaman yang memiliki app bar, drawer, dan body.

`AppBar`: Menampilkan judul halaman dengan gaya teks tertentu dan warna latar belakang.

`Drawer`: Digunakan untuk menampilkan drawer atau bilah samping kiri dengan menggunakan widget LeftDrawer.

`FutureBuilder`: Membantu dalam menangani proses asinkron, khususnya ketika menunggu hasil dari future (seperti hasil dari fetchProduct()). Widget ini memungkinkan Anda untuk membangun UI berdasarkan status Future seperti ConnectionState.waiting, ConnectionState.done, dan lainnya.

`ListView.builder`: Digunakan untuk menampilkan daftar item dalam bentuk scrollable list. Ini membangun item secara dinamis sesuai dengan jumlah data yang diterima dari future.

`InkWell`: Memberikan efek tap atau klik saat item list ditekan. Digunakan di dalam ListView.builder untuk mendeteksi interaksi pengguna dan navigasi ke halaman detail item.

`Card`: Mengelompokkan konten menjadi kartu dengan bayangan dan sudut yang dibulatkan untuk setiap item dalam ListView.

`Text`: Menampilkan teks pada layar dengan gaya tertentu. Digunakan untuk menampilkan nama, kategori, dan jumlah item.

`Center`: Mengatur widget ke tengah area render. Digunakan untuk menampilkan CircularProgressIndicator saat data masih diambil (loading).

`Column`: Menyusun widget secara vertikal satu per satu. Digunakan untuk menyusun teks deskripsi item (nama, kategori, jumlah) dalam Card.

`Padding`: Menambahkan ruang kosong di sekeliling konten dari Column dalam Card.

## **Cara pengimplementasian Tugas 9**

### **Membuat halaman login dan melakukan integrasi dengan proyek Django**
1. Membuat App baru (authentication) pada proyek Django dan menginstall library corsheaders
2. Membuat fungsi login pada `views.py`
3. Menginstall package `pbp_django_auth` serta memodifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider
4. Membuat `login.dart` untuk menampilkan halaman login

### **Membuat model kustom yang menyesuaikan proyek Django**
1. Membuka endpoint JSON dan menyalinnya pada situs `Quicktype` untuk mengonversikan model ke dalam dart
2. Salin model dalam bentuk dart
3. Membuat `product.dart` sebagai model

### **Membuat halaman yang menampilkan item**
Melakukan penambahan kode pada `stuff_list.dart` yang sudah dibuat pada bonus tugas 8 agar dapat melakukan pengambilan data JSON serta menambahkan kode agar apabila card item diklik maka akan melakukan routing ke `detail_item.dart`

### **Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item**
Membuat `detail_item.dart` dengan kode berikut
```dart
import 'package:flutter/material.dart';
import 'package:tukatuku/models/product.dart';

class DetailItemPage extends StatelessWidget {
final Product item;

DetailItemPage({required this.item});

@override
Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text(
        '${item.fields.name}',
        style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.indigo[900],
        foregroundColor: Colors.white,
    ),
    body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            Text(
            item.fields.name,
            style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 10),
            Text("Amount : ${item.fields.amount}"),
            const SizedBox(height: 10),
            Text("Description : ${item.fields.description}"),
            const SizedBox(height: 10),
            Text("Price : ${item.fields.price}"),
             const SizedBox(height: 10),
            Text("Category: ${item.fields.category}"),
        ],
        ),
    ),
    );
}
}
```