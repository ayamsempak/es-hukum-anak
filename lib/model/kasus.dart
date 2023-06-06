class Kasus {
  String name = "";
  List<String> listPertanyaan = [];
  List<Map<String, dynamic>> rules = [];

  late List<bool> listJawaban;

  Kasus(this.name, this.listPertanyaan) {
    listJawaban = List<bool>.filled(listPertanyaan.length, false);
  }

  void addRules(Map<String, dynamic> rule) {
    rules.add(rule);
  }

  List<String> getTags() {
    for (int i = 0; i < rules.length; i++) {
      if (isEqual(rules[i]["conditions"], listJawaban)) {
        return rules[i]["tags"];
      }
    }
    return [];
  }

  bool isEqual(List<bool> list1, List<bool> list2) {
    if (list1.length != list2.length) {
      return false;
    }

    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) {
        return false;
      }
    }

    return true;
  }
}
