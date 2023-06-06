import 'package:flutter/material.dart';

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
      body: ListView.builder(
        itemCount: widget.kasus.listPertanyaan.length,
        padding: const EdgeInsets.all(10.0),
        itemBuilder: (BuildContext context, int index) {
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
        },
      ),
    );
  }
}
