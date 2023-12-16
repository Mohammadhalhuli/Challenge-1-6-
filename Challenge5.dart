class ListNode<T> {
  T value;
  ListNode<T>? next;

  ListNode(this.value);
}

void addNode<T>(ListNode<T> head, T newValue) {
  ListNode<T> current = head;
  while (current.next != null) {
    current = current.next!;
  }
  current.next = ListNode(newValue);
}

ListNode<T>? reverseList<T>(ListNode<T>? head) {
  ListNode<T>? prev = null;
  ListNode<T>? current = head;
  ListNode<T>? next;

  while (current != null) {
    next = current.next;
    current.next = prev;
    prev = current;
    current = next;
  }

  return prev;
}

void main() {
  ListNode<int> head = ListNode(1);
  addNode(head, 2);
  addNode(head, 3);
  addNode(head, 4);
  addNode(head, 5);
  ListNode<int>? reversedHead = reverseList(head);
  ListNode<int>? current = reversedHead;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}
