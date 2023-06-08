import 'package:flutter/material.dart';

class BerandaView extends StatelessWidget {
  const BerandaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Perlindungan Anak',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Anak secara garis besar berarti sesuatu yang lebih kecil, seseorang yang belum dewasa, atau suatu objek yang "dibawahi" oleh objek lain. Namun, arti tersebut mencakup hal-hal yang beragam menurut disiplin ilmiahnya. Dalam bidang biologi, anak umumnya adalah makhluk hidup yang belum mencapai tahap matang atau dewasa.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16), // Menambahkan jarak antara paragraf
            Text(
              'Perlindungan anak adalah segala kegiatan untuk menjamin dan melindungi anak dan pemenuhan hak-haknya agar dapat hidup, tumbuh, berkembang, dan berpartisipasi secara optimal sesuai dengan harkat dan martabat kemanusiaan, serta mendapat perlindungan dari tindak kekerasan dan diskriminasi. Perlindungan anak merupakan tanggung jawab bersama dari keluarga, masyarakat, dan negara.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16), // Menambahkan jarak antara paragraf
            Text(
              'Hukum yang mengatur tentang perlindungan anak adalah UU no 23 tahun 2002',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                height: 1.5,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
