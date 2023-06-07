import 'package:flutter/material.dart';
import 'pasal_view.dart';

import '../model/kasus.dart';

class PertanyaanView extends StatefulWidget {
  final Kasus kasus;

  const PertanyaanView({
    Key? key,
    required this.kasus,
  }) : super(key: key);

  @override
  State<PertanyaanView> createState() => _PertanyaanViewState();
}

class _PertanyaanViewState extends State<PertanyaanView> {
  List<bool?> _jawaban = [];

  @override
  void initState() {
    super.initState();
    _jawaban = List<bool?>.filled(widget.kasus.listPertanyaan.length, null);
  }

  void handleJawabanOnChange(bool? value, int index) {
    setState(() {
      _jawaban[index] = value;
    });
    // debugPrint(_jawaban.toString());
  }

  void onPressSubmit() {
    List<bool> listJawaban = [];
    for (int i = 0; i < _jawaban.length; i++) {
      if (_jawaban[i] == null || _jawaban[i] == false) {
        listJawaban.add(false);
      } else {
        listJawaban.add(true);
      }
    }

    List<dynamic> forwardChaining = widget.kasus.getTags(listJawaban);
    List<String> targetTags =
        forwardChaining.map((item) => item.toString()).toList();

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        settings: const RouteSettings(name: "/pasal"),
        builder: (context) => PasalView(
          targetTags: targetTags,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.kasus.name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(children: [
            ...buildPertanyaanListWidget(),
            ElevatedButton(
              onPressed: onPressSubmit,
              child: const Text('Selesai'),
            ),
          ]),
        ),
      ),
    );
  }

  List<Widget> buildPertanyaanListWidget() {
    List<Widget> listWidget = [];
    for (int i = 0; i < widget.kasus.listPertanyaan.length; i++) {
      listWidget.add(buildPertanyaanWidget(i));
    }
    return listWidget;
  }

  Widget buildPertanyaanWidget(int index) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 10.0,
        left: 10.0,
        right: 10.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pertanyaan ${index + 1}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            widget.kasus.listPertanyaan[index],
            textAlign: TextAlign.justify,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio<bool>(
                value: true,
                groupValue: _jawaban[index],
                onChanged: (value) {
                  handleJawabanOnChange(value, index);
                },
              ),
              const Text('Ya'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio<bool>(
                value: false,
                groupValue: _jawaban[index],
                onChanged: (value) {
                  handleJawabanOnChange(value, index);
                },
              ),
              const Text('Tidak'),
            ],
          )
        ],
      ),
    );
  }
}
