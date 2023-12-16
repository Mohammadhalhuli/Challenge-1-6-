class ListNode<T> {
  T value;
  ListNode<T>? next;

  ListNode(this.value);
}

void printReverse<T>(ListNode<T>? head) {
  if (head == null) return;
  printReverse(head.next);
  print(head.value);
}

 
void addNode<T>(ListNode<T>? head, T value) {
  if (head == null) {
    head = ListNode(value);
    return;
  }
  ListNode<T> current = head;
  while (current.next != null) {
    current = current.next!;
  }
  current.next = ListNode(value);
}

void main() { 
  ListNode<int> head = ListNode(1);
  addNode(head, 12);
  addNode(head, 35);
  addNode(head, 22);
	printReverse(head);
}
