# layout_flutter

A new Flutter project.

## Praktikum 1: Membangun Layout di Flutter
### Langkah 1 Buat Project Baru
Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.
![Screenshot layout_flutter](images/ss01.png)

### Langkah 2: Buka file lib/main.dart
Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.
![Screenshot layout_flutter](images/ss02.png)

### Langkah 3: Identifikasi layout diagram

### Langkah 4: Implementasi title row
Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp
/* soal 1 */ Letakkan widget Column di dalam widget Expanded agar menyesuaikan ruang yang tersisa di dalam widget Row. Tambahkan properti crossAxisAlignment ke CrossAxisAlignment.start sehingga posisi kolom berada di awal baris.
/* soal 2 */ Letakkan baris pertama teks di dalam Container sehingga memungkinkan Anda untuk menambahkan padding = 8. Teks ‘Batu, Malang, Indonesia' di dalam Column, set warna menjadi abu-abu.
/* soal 3 */ Dua item terakhir di baris judul adalah ikon bintang, set dengan warna merah, dan teks "41". Seluruh baris ada di dalam Container dan beri padding di sepanjang setiap tepinya sebesar 32 piksel. Kemudian ganti isi body text ‘Hello World' dengan variabel titleSection seperti berikut:

![Screenshot layout_flutter](images/ss03.png)
![Screenshot layout_flutter](images/ss04.png)

## Praktikum 2: Implementasi button row

### Langkah 1: Buat method Column _buildButtonColumn
Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.

Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.

lib/main.dart (_buildButtonColumn)
![Screenshot layout_flutter](images/ss05.png)

### Langkah 2: Buat widget buttonSection
Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.

Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():

lib/main.dart (buttonSection)
![Screenshot layout_flutter](images/ss06.png)

### Langkah 3: Tambah button section ke body
![Screenshot layout_flutter](images/ss07.png)
![Screenshot layout_flutter](images/ss08.png)

## Praktikum 3: Implementasi text section
### Langkah 1: Buat widget textSection
Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:
![Screenshot layout_flutter](images/ss09.png)
### Langkah 2: Tambahkan variabel text section ke body
![Screenshot layout_flutter](images/ss10.png)

![Screenshot layout_flutter](images/ss11.png)

## Praktikum 4: Implementasi image section
### Langkah 1: Siapkan aset gambar
![Screenshot layout_flutter](images/ss12.png)

### Langkah 2: Tambahkan gambar ke body
![Screenshot layout_flutter](images/ss13.png)

### Langkah 3: Terakhir, ubah menjadi ListView
![Screenshot layout_flutter](images/ss14.png)
![Screenshot layout_flutter](images/ss15.png)

## Praktikum 5: Membangun Navigasi di Flutter
### Langkah 1: Siapkan project baru
![Screenshot layout_flutter](images/ss16.png)

### Langkah 2: Mendefinisikan Route
![Screenshot layout_flutter](images/ss17.png)

### Langkah 3: Lengkapi Kode di main.dart
![Screenshot layout_flutter](images/ss18.png)

### Langkah 4: Membuat data model
![Screenshot layout_flutter](images/ss19.png)

### Langkah 5: Lengkapi kode di class HomePage
![Screenshot layout_flutter](images/ss20.png)

### Langkah 6: Membuat ListView dan itemBuilder
![Screenshot layout_flutter](images/ss21.png)
![Screenshot layout_flutter](images/ss22.png)

### Langkah 7: Menambahkan aksi pada ListView
![Screenshot layout_flutter](images/ss23.png)
![Screenshot layout_flutter](images/ss24.png)

## Tugas Praktikum 2
### 1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.
![Screenshot layout_flutter](images/ss25.png)

### 2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)
![Screenshot layout_flutter](images/ss26.png)

### 3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.
![Screenshot layout_flutter](images/ss28.png)
![Screenshot layout_flutter](images/ss29.png)
![Screenshot layout_flutter](images/ss30.png)

### 4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini:
![Screenshot layout_flutter](images/ss31.png)

### 5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
![Screenshot layout_flutter](images/record01.gif)

### 6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!
![Screenshot layout_flutter](images/ss32.png)
![Screenshot layout_flutter](images/ss33.png)
![Screenshot layout_flutter](images/ss34.png)
