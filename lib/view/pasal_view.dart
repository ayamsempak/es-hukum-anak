// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:collection';

import "package:flutter/material.dart";

import '../enum/list_pasal.dart';
import '../enum/list_bunyi_pasal.dart';
import '../model/node.dart';
import '../model/pasal.dart';
import '../model/tree.dart';

class PasalView extends StatefulWidget {
  final List<String> targetTags;

  const PasalView({super.key, required this.targetTags});

  @override
  State<PasalView> createState() => _PasalViewState();
}

class _PasalViewState extends State<PasalView> {
  Tree tree = Tree();
  List<String> _targetTags = [];
  String? _melanggarPasal;
  late List<int> _bunyiPasal;

  @override
  void initState() {
    super.initState();
    // Pass targetTags dari field PasalView menjadi _targetTags private
    _targetTags = widget.targetTags;

    // Membuat objek Tree dan memasukkan seluruh isi listPasal ke dalam Tree
    List<Pasal> lp = listPasal;
    for (var pasal in lp) {
      tree.insertNode(pasal);
    }

    // Temukan melanggar pasal
    var result = DFS(tree, _targetTags);
    _bunyiPasal = [];

    if (result.isNotEmpty) {
      _melanggarPasal = result[0];
      _bunyiPasal = result[1];
    }
    // _melanggarPasal = DFS(tree, _targetTags);
  }

// Fungsi untuk membandingkan dua buah list string
  bool compareStringLists(List<String> list1, List<String> list2) {
    if (list1.length != list2.length) {
      return false;
    }

    list1.sort();
    list2.sort();

    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) {
        return false;
      }
    }

    return true;
  }

// Fungsi untuk mencari melanggarPasal berdasarkan list of tags menggunakan DFS
  List DFS(Tree tree, List<String> targetTags) {
    if (tree.root == null) {
      return [];
    }

    Queue<Node> queue = Queue();
    queue.add(tree.root!);

    while (queue.isNotEmpty) {
      Node currentNode = queue.removeFirst();

      if (compareStringLists(currentNode.pasal.tags, targetTags)) {
        return [currentNode.pasal.melanggarPasal, currentNode.pasal.bunyiPasal];
      }

      if (currentNode.left != null) {
        queue.add(currentNode.left!);
      }
      if (currentNode.right != null) {
        queue.add(currentNode.right!);
      }
    }

    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Pelanggaran'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              pernyataanWidget(_melanggarPasal),
              ...bunyiPasalWidgets(_bunyiPasal),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).popUntil(
                    ModalRoute.withName("/home"),
                  );
                },
                child: const Text('Kembali'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget pernyataanWidget(String? melanggarPasal) {
    if (melanggarPasal != null) {
      return Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 32,
                child: Text(
                  "Kondisi",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  ":",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                flex: 65,
                child: Text(
                  "Bersalah",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 32,
                child: Text(
                  "Melanggar Pasal",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  ":",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Expanded(
                flex: 65,
                child: Text(
                  melanggarPasal,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.all(5))
        ],
      );
    }
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 32,
              child: Text(
                "Kondisi",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                ":",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              flex: 65,
              child: Text(
                "Tidak Bersalah",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              flex: 32,
              child: Text(
                "Melanggar Pasal",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                ":",
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              flex: 65,
              child: Text(
                "-",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.all(5))
      ],
    );
  }

  List<Widget> bunyiPasalWidgets(List<int> bp) {
    List<Widget> bpw = [];
    for (int i = 0; i < bp.length; i++) {
      bpw.add(pasal(bp[i], bunyiPasal[bp[i]].toString()));
    }
    return bpw;
  }

  Widget pasal(int pasalNo, String pasalStr) {
    return Column(
      children: [
        Text(
          "Pasal $pasalNo",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          pasalStr,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
