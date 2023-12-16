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

ListNode<T>? removeAll<T>(ListNode<T>? head, T valueToRemove) {
  while (head != null && head.value == valueToRemove) {
    head = head.next;
  }

  ListNode<T>? current = head;
  while (current != null && current.next != null) { 
    if (current.next!.value == valueToRemove) {
      current.next = current.next?.next;
    } else {
      current = current.next;
    }
  }

  return head;
}

void main() {
  ListNode<int> head = ListNode(1);
  addNode(head, 2);
  addNode(head, 2);
  addNode(head, 3);
  addNode(head, 4);
  addNode(head, 2); 
  ListNode<int>? updatedHead = removeAll(head, 2);

  ListNode<int>? current = updatedHead;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}
