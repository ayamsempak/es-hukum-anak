class Kasus {
  String name = "";
  List<String> listPertanyaan = [];
  List<Map<String, dynamic>> rules = [];

  Kasus({required this.name, required this.listPertanyaan});

  void addRules(Map<String, dynamic> rule) {
    rules.add(rule);
  }

  List<dynamic> getTags(List<bool> listJawaban) {
    for (int i = 0; i < rules.length; i++) {
      if (isEqual(rules[i]["condition"], listJawaban)) {
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
