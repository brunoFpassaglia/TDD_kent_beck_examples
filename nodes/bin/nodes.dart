import 'dart:math';

void main(List<String> arguments) {
  var l1 = ListNode(2, ListNode(4, ListNode(3)));
  var l2 = ListNode(5, ListNode(6, ListNode(4)));

  Solution s = Solution();
  var solution = s.addTwoNumbers(l1, l2);
  print(solution.toString());
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    int firstNum = getNumber(l1!, 0);
    int secondNum = getNumber(l2!, 0);
    int sum = firstNum + secondNum;
    List<ListNode> nodes = [];
    while (sum > 0) {
      var node = ListNode(sum % 10);
      sum = sum ~/ 10;
      nodes.add(node);
    }
    for (int i = 0; i < nodes.length - 1; i++) {
      nodes[i].next = nodes[i + 1];
    }
    return nodes.first;
  }

  int getNumber(ListNode l, int exp) {
    if (l.next != null) {
      return l.val * (pow(10, exp) as int) + getNumber(l.next!, exp + 1);
    } else {
      return l.val * (pow(10, exp) as int);
    }
  }
}
