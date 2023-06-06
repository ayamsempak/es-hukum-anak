import '../model/pasal.dart';

List<Pasal> listPasal = [
  Pasal(tags: ['diskriminasi'], melanggarPasal: '77'),
  Pasal(tags: ['eksploitasi'], melanggarPasal: '78'),
  Pasal(tags: ['pengangkatan anak'], melanggarPasal: '79'),
  Pasal(tags: ['penganiayaan'], melanggarPasal: '80'),
  Pasal(tags: ['cabul'], melanggarPasal: '81'),
  Pasal(tags: ['persetubuhan'], melanggarPasal: '82'),
  Pasal(tags: ['cabul', 'persetubuhan'], melanggarPasal: '81 dan 82'),
  Pasal(tags: ['penculikan'], melanggarPasal: '83'),
  Pasal(tags: ['transplantasi organ'], melanggarPasal: '84'),
  Pasal(tags: ['jual beli organ'], melanggarPasal: '85'),
  Pasal(
      tags: ['penculikan', 'transplantasi organ'], melanggarPasal: '83 dan 84'),
  Pasal(tags: ['penculikan', 'jual beli organ'], melanggarPasal: '83 dan 85'),
  Pasal(
      tags: ['penculikan', 'transplantasi organ', 'jual beli organ'],
      melanggarPasal: '83, 84 dan 85'),
  Pasal(
      tags: ['transplantasi organ', 'jual beli organ'],
      melanggarPasal: '84 dan 85'),
  Pasal(tags: ['pemilihan agama'], melanggarPasal: '86'),
  Pasal(
      tags: ['pemilihan agama', 'memperalat anak'],
      melanggarPasal: '86 dan 87'),
  Pasal(
      tags: ['pemilihan agama', 'penyalahgunaan zat terlarang'],
      melanggarPasal: '86 dan 89'),
  Pasal(tags: [
    'pemilihan agama',
    'memperalat anak',
    'penyalahgunaan zat terlarang'
  ], melanggarPasal: '86, 87 dan 89'),
  Pasal(tags: ['memperalat anak'], melanggarPasal: '87'),
  Pasal(
      tags: ['memperalat anak', 'penyalahgunaan zat terlarang'],
      melanggarPasal: '87 dan 89'),
  Pasal(tags: ['penyalahgunaan zat terlarang'], melanggarPasal: '89'),
];
