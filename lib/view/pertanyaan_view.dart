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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.kasus.name),
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
                  'Pertanyaan ke-${index + 1}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),
                ),
                Text(
                  widget.kasus.listPertanyaan[index],
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
