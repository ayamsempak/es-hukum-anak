import 'node.dart';
import 'pasal.dart';

class Tree {
  Node? root;

  void insertNode(Pasal pasal) {
    Node newNode = Node(pasal: pasal);

    if (root == null) {
      root = newNode;
    } else {
      _insertNodeRecursively(root!, newNode);
    }
  }

  void _insertNodeRecursively(Node currentNode, Node newNode) {
    if (newNode.pasal.tags.length < currentNode.pasal.tags.length) {
      if (currentNode.left == null) {
        currentNode.left = newNode;
      } else {
        _insertNodeRecursively(currentNode.left!, newNode);
      }
    } else {
      if (currentNode.right == null) {
        currentNode.right = newNode;
      } else {
        _insertNodeRecursively(currentNode.right!, newNode);
      }
    }
  }
}
