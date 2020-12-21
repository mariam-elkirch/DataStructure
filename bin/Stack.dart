import 'dart:collection';

class MStack<T> {
  final mystack = Queue<T>();

  void push(T element) {
    mystack.addLast(element);
  }

  T pop() {
    T lastElement = mystack.last;
    mystack.removeLast();
    return lastElement;
  }
  bool isEmpty(mystack) {
    if (mystack != null) {
      return false;
    }
    return true;
  }
  T peek() {
    if (mystack.isEmpty) {
      throw StateError("Cannot peek() on empty stack.");
    }
    return this.mystack.last;
  }
  int lenght(mystack){
    return this.mystack.length;
  }
}