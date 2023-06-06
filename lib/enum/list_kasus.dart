import 'package:skripsi1/model/kasus.dart';

List<Kasus> loadKasus() {
  Kasus kasusDiskriminasi = loadKasusDiskriminasi();
  Kasus kasusEksploitasi = loadKasusEksploitasi();
  Kasus kasusPengangkatanAnak = loadKasusPengangkatanAnak();
  Kasus kasusPenganiayaan = loadKasusPenganiayaan();
  Kasus kasusPenculikan = loadKasusPenculikan();
  Kasus kasusPemilihanAgama = loadKasusPemilihanAgama();

  List<Kasus> listKasus = [
    kasusDiskriminasi,
    kasusEksploitasi,
    kasusPengangkatanAnak,
    kasusPenganiayaan,
    kasusPenculikan,
    kasusPemilihanAgama
  ];

  return listKasus;
}

Kasus loadKasusDiskriminasi() {
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

  for (int i = 0; i < 32; i++) {
    List<bool> combination = [];
    for (int j = 0; j < 5; j++) {
      combination.add(((i >> j) & 1) == 1);
    }

    if (kasusDiskriminasi
        .isEqual(combination, [false, false, false, false, false])) {
      kasusDiskriminasi.addRules({
        "condition": combination,
        "tags": [],
      });
    } else {
      kasusDiskriminasi.addRules({
        "condition": combination,
        "tags": ['diskriminasi'],
      });
    }
  }

  return kasusDiskriminasi;
}

Kasus loadKasusEksploitasi() {
  Kasus kasusEksploitasi = Kasus(
    "Eksploitasi",
    [
      "Apakah pelaku memanfaatkan fisik dan tenanga si anak agar bekerja demi keuntungan orang lain? Contoh : menyuruh anak melakukan pekerjaan yang seharusnya belum mampu dikerjakan oleh manusia seumur mereka.",
      "Apakah pelaku melakukan tindakn yang menghambat perkembangan emosional dan social si anak? Contoh : tuntutan yang tinggi terhadap prestasi anak sehingga membuat mental anak hancur dan stress",
      "Apakah pelaku melakukan tindakan eksploitasi seksual? Contoh : memaksa anak untuk menjual diri demi kepentingan ekonomi keluarga",
    ],
  );

  kasusEksploitasi.addRules({
    "condition": [true, true, true],
    "tags": ['eksploitasi'],
  });

  kasusEksploitasi.addRules({
    "condition": [true, true, false],
    "tags": ['eksploitasi'],
  });

  kasusEksploitasi.addRules({
    "condition": [true, false, true],
    "tags": ['eksploitasi'],
  });

  kasusEksploitasi.addRules({
    "condition": [true, false, false],
    "tags": ['eksploitasi'],
  });

  kasusEksploitasi.addRules({
    "condition": [false, true, true],
    "tags": ['eksploitasi'],
  });

  kasusEksploitasi.addRules({
    "condition": [false, true, false],
    "tags": ['eksploitasi'],
  });

  kasusEksploitasi.addRules({
    "condition": [false, false, true],
    "tags": ['eksploitasi'],
  });

  kasusEksploitasi.addRules({
    "condition": [false, false, false],
    "tags": [],
  });

  return kasusEksploitasi;
}

Kasus loadKasusPengangkatanAnak() {
  Kasus kasusPengangkatanAnak = Kasus(
    "Pengangkatan Anak",
    [
      "Apakah dalam pengangkatan anak, si calon orangtua memutuskan hubungan darah antara anak yang diangkat dengan orangtua kandungnya?",
      "Menurut UU, apabila asal usul agama calon anak angkat tidak diketahui maka agama anak tersebut harus mengikuti agama mayoritas penduduk setempat. Apakah calon orangtua anak mengikuti peraturan tersebut? ",
      "Calon orangtua wajib memberitahukan kepada anak angkatnya mengenai asal usulnya dan orangtua kandungnya, dengan memperhatikan kesiapan anak yang bersangkutan. Apakah calon orangtua menyanggupi persyaratan tersebut?",
    ],
  );

  kasusPengangkatanAnak.addRules({
    "condition": [true, true, true],
    "tags": ['pengangkatan anak'],
  });

  kasusPengangkatanAnak.addRules({
    "condition": [true, true, false],
    "tags": ['pengangkatan anak'],
  });

  kasusPengangkatanAnak.addRules({
    "condition": [true, false, true],
    "tags": ['pengangkatan anak'],
  });

  kasusPengangkatanAnak.addRules({
    "condition": [true, false, false],
    "tags": ['pengangkatan anak'],
  });

  kasusPengangkatanAnak.addRules({
    "condition": [false, true, true],
    "tags": [],
  });

  kasusPengangkatanAnak.addRules({
    "condition": [false, true, false],
    "tags": ['pengangkatan anak'],
  });

  kasusPengangkatanAnak.addRules({
    "condition": [false, false, true],
    "tags": ['pengangkatan anak'],
  });

  kasusPengangkatanAnak.addRules({
    "condition": [false, false, false],
    "tags": ['pengangkatan anak'],
  });

  return kasusPengangkatanAnak;
}

Kasus loadKasusPenganiayaan() {
  Kasus kasusPenganiayaan = Kasus(
    "Penganiayaan dan Kekerasan Seks",
    [
      "Apakah pelaku melakukan kekerasan fisik ataupun berupa ancaman kekerasan terhadap sang anak?",
      "Apakah pelaku melakukan kegiatan cabul? Baik itu dengan mengancam ataupun melakukan tipu muslihat ataupun bujukan terhadap sang anak?",
      "Apakah pelaku memaksa melakukan persetubuhan dengan pelaku ataupun orang lain?",
    ],
  );

  kasusPenganiayaan.addRules({
    "condition": [true, true, true],
    "tags": ['cabul', 'persetubuhan'],
  });

  kasusPenganiayaan.addRules({
    "condition": [true, true, false],
    "tags": ['cabul'],
  });

  kasusPenganiayaan.addRules({
    "condition": [true, false, true],
    "tags": ['persetubuhan'],
  });

  kasusPenganiayaan.addRules({
    "condition": [true, false, false],
    "tags": ['penganiayaan'],
  });

  kasusPenganiayaan.addRules({
    "condition": [false, true, true],
    "tags": ['cabul', 'persetubuhan'],
  });

  kasusPenganiayaan.addRules({
    "condition": [false, true, false],
    "tags": ['cabul'],
  });

  kasusPenganiayaan.addRules({
    "condition": [false, false, true],
    "tags": ['persetubuhan'],
  });

  kasusPenganiayaan.addRules({
    "condition": [false, false, false],
    "tags": [],
  });

  return kasusPenganiayaan;
}

Kasus loadKasusPenculikan() {
  Kasus kasusPenculikan = Kasus(
    "Penculikan dan Transplantasi Organ",
    [
      "Apakah pelaku menculik anak atau memperdagangkan anak untuk keuntungan diri sendiri/ orang lain?",
      "Apakah pelaku melakukan tindakan transplantasi organ / jaringan tubuh anak untuk pihak lain dengan maksud untuk menguntungkan diri sendiri/ orang lain?",
      "Apakah pelaku mengambil organ tubuh anak untuk diperjual belikan?",
    ],
  );

  kasusPenculikan.addRules({
    "condition": [true, true, true],
    "tags": ['penculikan', 'transplantasi organ', 'jual beli organ'],
  });

  kasusPenculikan.addRules({
    "condition": [true, true, false],
    "tags": ['penculikan', 'transplantasi organ'],
  });

  kasusPenculikan.addRules({
    "condition": [true, false, true],
    "tags": ['penculikan', 'jual beli organ'],
  });

  kasusPenculikan.addRules({
    "condition": [true, false, false],
    "tags": ['penculikan'],
  });

  kasusPenculikan.addRules({
    "condition": [false, true, true],
    "tags": ['transplantasi organ', 'jual beli organ'],
  });

  kasusPenculikan.addRules({
    "condition": [false, true, false],
    "tags": ['transplantasi organ'],
  });

  kasusPenculikan.addRules({
    "condition": [false, false, true],
    "tags": ['jual beli organ'],
  });

  kasusPenculikan.addRules({
    "condition": [false, false, false],
    "tags": [],
  });

  return kasusPenculikan;
}

Kasus loadKasusPemilihanAgama() {
  Kasus kasusPemilihanAgama = Kasus(
    "Pemilihan Agama, Pemaksaan dan Narkotika",
    [
      "Apakah pelaku melakukan tipu muslihat, kebohongan atau membujuk anak untuk memilih agama lain bukan atas kemauannya sendiri?",
      "Apakah pelaku memperalat anak untuk kepentingan militer / memaksa anak terlibat dalam kerusuhan social atau peristiwa yang mengandung unsur kekerasan?",
      "Apakah pelaku dengan sengaja melibatkan anak dalam penyalahgunaan produksi/distribusi narkotika ataupun alkohol?",
    ],
  );

  kasusPemilihanAgama.addRules({
    "condition": [true, true, true],
    "tags": [
      'pemilihan agama',
      'memperalat anak',
      'penyalahgunaan zat terlarang'
    ],
  });

  kasusPemilihanAgama.addRules({
    "condition": [true, true, false],
    "tags": ['pemilihan agama', 'memperalat anak'],
  });

  kasusPemilihanAgama.addRules({
    "condition": [true, false, true],
    "tags": ['pemilihan agama', 'penyalahgunaan zat terlarang'],
  });

  kasusPemilihanAgama.addRules({
    "condition": [true, false, false],
    "tags": ['pemilihan agama'],
  });

  kasusPemilihanAgama.addRules({
    "condition": [false, true, true],
    "tags": ['memperalat anak', 'penyalahgunaan zat terlarang'],
  });

  kasusPemilihanAgama.addRules({
    "condition": [false, true, false],
    "tags": ['memperalat anak']
  });

  kasusPemilihanAgama.addRules({
    "condition": [false, false, true],
    "tags": ['penyalahgunaan zat terlarang'],
  });

  kasusPemilihanAgama.addRules({
    "condition": [false, false, false],
    "tags": [],
  });

  return kasusPemilihanAgama;
}
