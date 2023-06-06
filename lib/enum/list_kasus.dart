import 'package:skripsi1/model/kasus.dart';

List<Kasus> loadKasus() {
  Kasus kasusDiskriminasi = Kasus(
    "Diskriminasi dan Penelantaran Anak",
    [
      "Apakah pelaku melakukan tindakan yang tidak adil terhadap anak, baik itu terhadap ras, suku bangsa, agama ataupun status social?",
      "Apakah akibat dari tindakan yang tidak adil tersebut, si anak sampai mengalami kerugian, baik materiil maupun moril sehingga menghambat fungsi sosialnya? Contoh : anak sampai tidak mau keluar rumah karena merasa minder",
      "Apakah pelaku tidak memberikan kebutuhan pokok kepada anak? Contoh : tidak memberikan makan, pakaian ataupun tempat tinggal yang layak padahal pelaku memiliki ekonomi yang memumpuni",
      "Apakah pelaku mengabaikan kesehatan sang anak? Contoh : ketika anak demam , orangtua tidak membawa anak kedokter karena sibuk dengan hal lainnya",
      "Apakah pelaku sering mengabaikan anak? Contoh : ketika sang anak sedih butuh tempat untuk cerita tapi orangtua malah menghiraukan perasaan sang anak sehingga membuat mental anak menjadi rusak"
    ],
  );

  Kasus kasusEksploitasi = Kasus(
    "Eksploitasi",
    [
      "Apakah pelaku memanfaatkan fisik dan tenanga si anak agar bekerja demi keuntungan orang lain? Contoh : menyuruh anak melakukan pekerjaan yang seharusnya belum mampu dikerjakan oleh manusia seumur mereka.",
      "Apakah pelaku melakukan tindakn yang menghambat perkembangan emosional dan social si anak? Contoh : tuntutan yang tinggi terhadap prestasi anak sehingga membuat mental anak hancur dan stress",
      "Apakah pelaku melakukan tindakan eksploitasi seksual? Contoh : memaksa anak untuk menjual diri demi kepentingan ekonomi keluarga",
    ],
  );

  Kasus kasusPengangkatanAnak = Kasus(
    "Pengangkatan Anak",
    [
      "Apakah dalam pengangkatan anak, si calon orangtua memutuskan hubungan darah antara anak yang diangkat dengan orangtua kandungnya?",
      "Menurut UU, apabila asal usul agama calon anak angkat tidak diketahui maka agama anak tersebut harus mengikuti agama mayoritas penduduk setempat. Apakah calon orangtua anak mengikuti peraturan tersebut? ",
      "Calon orangtua wajib memberitahukan kepada anak angkatnya mengenai asal usulnya dan orangtua kandungnya, dengan memperhatikan kesiapan anak yang bersangkutan. Apakah calon orangtua menyanggupi persyaratan tersebut?",
    ],
  );

  Kasus kasusPenganiayaan = Kasus(
    "Penganiayaan dan Kekerasan Seks",
    [
      "Apakah pelaku melakukan kekerasan fisik ataupun berupa ancaman kekerasan terhadap sang anak?",
      "Apakah pelaku melakukan kegiatan cabul? Baik itu dengan mengancam ataupun melakukan tipu muslihat ataupun bujukan terhadap sang anak?",
      "Apakah pelaku memaksa melakukan persetubuhan dengan pelaku ataupun orang lain?",
    ],
  );

  Kasus kasusPenculikan = Kasus(
    "Penculikan dan Transplantasi Organ",
    [
      "Apakah pelaku menculik anak atau memperdagangkan anak untuk keuntungan diri sendiri/ orang lain?",
      "Apakah pelaku melakukan tindakan transplantasi organ / jaringan tubuh anak untuk pihak lain dengan maksud untuk menguntungkan diri sendiri/ orang lain?",
      "Apakah pelaku mengambil organ tubuh anak untuk diperjual belikan?",
    ],
  );

  Kasus kasusPemilihan = Kasus(
    "Pemilihan Agama, Pemaksaan dan Nsarkotika",
    [
      "Apakah pelaku melakukan tipu muslihat, kebohongan atau membujuk anak untuk memilih agama lain bukan atas kemauannya sendiri?",
      "Apakah pelaku memperalat anak untuk kepentingan militer / memaksa anak terlibat dalam kerusuhan social atau peristiwa yang mengandung unsur kekerasan?",
      "Apakah pelaku dengan sengaja melibatkan anak dalam penyalahgunaan produksi/distribusi narkotika ataupun alkohol?",
    ],
  );
  kasusPemilihan.addRules({
    "condition": [true, true, true],
    "tags": [
      'pemilihan agama',
      'memperalat anak',
      'penyalahgunaan zat terlarang'
    ],
  });
  kasusPemilihan.addRules({
    "condition": [true, true, false],
    "tags": []
  });
  kasusPemilihan.addRules({
    "condition": [true, false, true],
    "tags": []
  });
  kasusPemilihan.addRules({
    "condition": [true, false, false],
    "tags": []
  });
  kasusPemilihan.addRules({
    "condition": [false, true, true],
    "tags": []
  });
  kasusPemilihan.addRules({
    "condition": [false, true, false],
    "tags": []
  });
  kasusPemilihan.addRules({
    "condition": [false, false, true],
    "tags": []
  });
  kasusPemilihan.addRules({
    "condition": [false, false, false],
    "tags": []
  });

  List<Kasus> listKasus = [
    kasusDiskriminasi,
    kasusEksploitasi,
    kasusPengangkatanAnak,
    kasusPenganiayaan,
    kasusPenculikan,
    kasusPemilihan
  ];

  return listKasus;
}

// kasusPemilihan.addRules({
//   "condition": [true, true, true],
//   "tags": [],
// });
// kasusPemilihan.addRules({
//   "condition": [true, true, false],
//   "tags": []
// });
// kasusPemilihan.addRules({
//   "condition": [true, false, true],
//   "tags": []
// });
// kasusPemilihan.addRules({
//   "condition": [true, false, false],
//   "tags": []
// });
// kasusPemilihan.addRules({
//   "condition": [false, true, true],
//   "tags": []
// });
// kasusPemilihan.addRules({
//   "condition": [false, true, false],
//   "tags": []
// });
// kasusPemilihan.addRules({
//   "condition": [false, false, true],
//   "tags": []
// });
// kasusPemilihan.addRules({
//   "condition": [false, false, false],
//   "tags": []
// });

