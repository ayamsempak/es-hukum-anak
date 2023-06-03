import "package:flutter/material.dart";

class KasusView extends StatelessWidget {
  const KasusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> lisPelanggaran = [
      "A",
      "B",
      "C",
      "D",
    ];

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Kasus Pelanggaran Terhadap Anak'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Text(
              "Tipe pelanggaran",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: lisPelanggaran.length,
                padding: const EdgeInsets.all(10.0),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 5,
                            color: Color.fromARGB(255, 240, 240, 240)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      horizontalTitleGap: 10.0,
                      trailing: const Icon(Icons.arrow_right),
                      title: Text(lisPelanggaran[index]),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
