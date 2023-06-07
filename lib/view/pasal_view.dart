import 'dart:collection';

import "package:flutter/material.dart";

import '../enum/list_pasal.dart';
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
    _melanggarPasal = findMelanggarPasal(tree, _targetTags);
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

// Fungsi untuk mencari melanggarPasal berdasarkan list of tags menggunakan BFS
  String? findMelanggarPasal(Tree tree, List<String> targetTags) {
    if (tree.root == null) {
      return null;
    }

    Queue<Node> queue = Queue();
    queue.add(tree.root!);

    while (queue.isNotEmpty) {
      Node currentNode = queue.removeFirst();

      if (compareStringLists(currentNode.pasal.tags, targetTags)) {
        return currentNode.pasal.melanggarPasal;
      }

      if (currentNode.left != null) {
        queue.add(currentNode.left!);
      }
      if (currentNode.right != null) {
        queue.add(currentNode.right!);
      }
    }

    return null;
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
        child: Column(
          children: [
            Text(
              _melanggarPasal != null
                  ? 'Melanggar Pasal: $_melanggarPasal'
                  : 'Tidak Bersalah',
              style: const TextStyle(fontSize: 24),
            ),
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
    );
  }
}
