import 'dart:collection';
class MQueue<T> {
  final myqueue = List<T>();

  void enqueue(T element) {

    myqueue.insert(0, element);
  }

  T dequeue() {
    if(myqueue.isNotEmpty) {
      T lastElement = myqueue[myqueue.length - 1];
      myqueue.removeAt(myqueue.length - 1);
      return lastElement;
    }
  }
  bool isEmpty(myqueue) {
    if (myqueue != null) {
      return false;
    }
    return true;
  }
  T peek() {
    if (myqueue.isEmpty) {
      throw StateError("Cannot peek() on empty stack.");
    }
    return this.myqueue.last;
  }
int lenght(myqueue){
  return this.myqueue.length;
}


}
