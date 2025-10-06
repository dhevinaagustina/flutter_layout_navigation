import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  
  Widget build(BuildContext context) {
    Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
    // Widget titleSection berisi bagian judul dan ikon
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // padding 32 di semua sisi
      child: Row(
        children: [
          Expanded(
            // soal 1: gunakan Expanded agar Column menyesuaikan ruang di Row
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // rata kiri
              children: [
                // soal 2: Container untuk teks pertama dengan padding bawah 8
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey, // teks abu-abu
                  ),
                ),
              ],
            ),
          ),
          // soal 3: ikon bintang merah dan teks "41"
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );
    // Bagian tombol (buttonSection)
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly, // sejajarkan kolom
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Wisata Gunung di Batu merupakan destinasi favorit di Kota Malang. '
        'Dengan udara sejuk, panorama pegunungan, dan suasana alami, '
        'tempat ini menjadi pilihan tepat untuk melepas penat dari rutinitas harian.\n\n'
        'Tugas Flutter Layout\n'
        'Dhevina Agustina (2341760065)',
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 16,
          height: 1.5,
          color: Colors.black87,
        ),
      ),
    );


    return MaterialApp(
      title: 'Flutter layout: Dhevina Agustina (2341760065)',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/gunung.jpeg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, 
            buttonSection,
            textSection,
          ],
        ),

      ),
    );
  }
}
