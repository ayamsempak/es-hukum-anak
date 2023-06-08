import 'package:flutter/material.dart';

class UndangundangView extends StatelessWidget {
  const UndangundangView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Undang - Undang',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Undang Undang no 23 tahun 2002',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              Text(
                'A. Pasal 77 tentang Diskriminasi Anak dipidana dengan pidana penjara paling lama 5 (lima) tahun dan/atau denda paling banyak Rp 100.000.000,00 (seratus juta rupiah)',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                'B. Pasal 78 Setiap orang yang mengetahui dan sengaja membiarkan anak dalam situasi darurat sebagaimana dimaksud dalam Pasal 60, anak yang berhadapan dengan hukum, anak dari kelompok minoritas dan terisolasi, anak yang tereksploitasi secara ekonomi dan/atau seksual, anak yang diperdagangkan, anak yang menjadi korban penyalahgunaan narkotika, alkohol, psikotropika, dan zat adiktif lainnya (napza), anak korban penculikan, anak korban perdagangan, atau anak korban kekerasan sebagaimana dimaksud dalam Pasal 59, padahal anak tersebut memerlukan pertolongan dan harus dibantu, dipidana dengan pidana penjara paling lama 5 (lima) tahun dan/atau denda paling banyak Rp 100.000.000,00 (seratus juta rupiah).',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                'C.	Pasal 79 Setiap orang yang melakukan pengangkatan anak yang bertentangan dengan ketentuan sebagaimana dimaksud dalam Pasal 39 ayat (1), ayat (2), dan ayat (4), dipidana dengan pidana penjara paling lama 5 (lima) tahun dan/atau denda paling banyak Rp 100.000.000,00 (seratus juta rupiah).',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  height: 1.5,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 16),
              Text(
                'D.	Pasal 80, 1) Setiap orang yang melakukan kekejaman, kekerasan atau ancaman kekerasan, atau penganiayaan terhadap anak, dipidana dengan pidana penjara paling lama 3 (tiga) tahun 6 (enam) bulan dan/atau denda paling banyak Rp 72.000.000,00 (tujuh puluh dua juta rupiah). 2)	Dalam hal anak sebagaimana dimaksud dalam ayat (1) luka berat, maka pelaku dipidana dengan pidana penjara paling lama 5 (lima) tahun dan/atau denda paling banyak Rp 100.000.000,00 (seratus juta rupiah). 3)	Dalam hal anak sebagaimana dimaksud dalam ayat (2) mati, maka pelaku dipidana dengan pidana penjara paling lama 10 (sepuluh) tahun dan/atau denda paling banyak Rp 200.000.000,00 (dua ratus juta rupiah). 4)	Pidana ditambah sepertiga dari ketentuan sebagaimana dimaksud dalam ayat (1), ayat (2), dan ayat (3) apabila yang melakukan penganiayaan tersebut orang tuanya',
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
      ),
    );
  }
}
