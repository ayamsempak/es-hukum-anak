import "package:flutter/material.dart";
import 'dart:collection';

import '../model/node.dart';
import '../model/tree.dart';

class PasalView extends StatefulWidget {
  const PasalView({super.key});

  @override
  State<PasalView> createState() => _PasalViewState();
}

class _PasalViewState extends State<PasalView> {
  Tree tree = Tree();
  List<String> targetTags = ['diskriminasi'];
  String? melanggarPasal;

  @override
  void initState() {
    super.initState();
    // Membuat objek Tree dan memasukkan seluruh isi listPasal ke dalam Tree

    melanggarPasal = findMelanggarPasal(tree, targetTags);
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
        title: const Text('Melanggar Pasal'),
      ),
      body: Center(
        child: Text(
          'Melanggar Pasal: $melanggarPasal',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
