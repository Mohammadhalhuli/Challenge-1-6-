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
ListNode<T>? findMiddle<T>(ListNode<T>? head) {
  if (head == null) return null;
  int length = 0;
  ListNode<T>? current = head;
  while (current != null) {
    length++;
    current = current.next;
  }
  current = head;
  for (int i = 0; i < length ~/ 2; i++) {
    current = current?.next;
  }
  return current;
}
void main() {
  ListNode<int> head = ListNode(1);
  addNode(head, 2);
  addNode(head, 3);
  addNode(head, 4);
  addNode(head, 5);
  addNode(head, 6);
  ListNode<int>? middleNode = findMiddle(head);
  print("The middle node value is: ${middleNode?.value}");
}
