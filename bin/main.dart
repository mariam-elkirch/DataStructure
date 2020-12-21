import 'dart:core' as prefix0;
import 'dart:core';
import 'dart:math';
import 'package:test/test.dart';
import 'Queue.dart';
import 'Stack.dart';
void main() {

  Random random = new Random();
 /* int randomNumber = random.nextInt(1000);
  final myQueue = MQueue<int>();
  myQueue.enqueue(7);
  myQueue.enqueue(2);
  myQueue.enqueue(3);


  print(myQueue.dequeue());

  bool em=myQueue.isEmpty(myQueue);
  print(em);
  //stack
  final myStack = MStack<int>();

  myStack.push(7);
  myStack.push(2);

  myStack.push(3);
print(  myStack.pop());
bool emp=myStack.isEmpty(myStack);
print(emp);
print(myStack.peek());
  print(myStack.lenght(myStack));

*/
  group('Stack', () {
  test('push() push element in stack', () {
    int randomNumber = random.nextInt(1000);
    final myStack = MStack<int>();
    myStack.push(randomNumber);
    expect(myStack.pop(), equals((randomNumber)));
  });


  test('pop() return top of stack', () {
    int randomNumber = random.nextInt(1000);
    final myStack = MStack<int>();
    myStack.push(randomNumber);
    final top = myStack.pop();
    //print(top);
    expect(top, equals((randomNumber)));
  });
  test('isEmpty() return true or false if stack is empty', () {

    final myStack = MStack<int>();

    expect(myStack.isEmpty(myStack), equals((false)));
  });
  test('peek() return last value in stack', () {

    final myStack = MStack<int>();
    myStack.push(7);
    myStack.push(2);
    myStack.push(3);
   
    expect(myStack.peek(), equals((3)));
  });
  test('lenght() return lenght of stack', () {

    final myStack = MStack<int>();
    myStack.push(7);
    myStack.push(2);
    myStack.push(3);
   
    expect(myStack.lenght(myStack), equals((3)));
  });
  });
  group('Queue', () {
    test('enqueue() push element in queue', () {
      int randomNumber = random.nextInt(1000);
      final myqueue = MQueue<int>();
      myqueue.enqueue(randomNumber);
      expect(myqueue.dequeue(), equals((randomNumber)));
    });


    test('dequeue() return  tail of queue', () {
      int randomNumber = random.nextInt(1000);
      final myqueue = MQueue<int>();
      myqueue.enqueue(randomNumber);
      expect(myqueue.dequeue(), equals((randomNumber)));
    });
    test('isEmpty() return true or false if queue is empty', () {

      final myqueue = MQueue<int>();

      expect(myqueue.isEmpty(myqueue), equals((false)));
    });
    test('peek() return last value in queue', () {

      final myQueue = MQueue<int>();
      myQueue.enqueue(7);
      myQueue.enqueue(2);
      myQueue.enqueue(3);
      expect(myQueue.peek(), equals((7)));
    });
    test('lenght() return lenght of queue', () {


      final myQueue = MQueue<int>();
      myQueue.enqueue(7);
      myQueue.enqueue(2);
      myQueue.enqueue(3);
      expect(myQueue.lenght(myQueue), equals((3)));
    });
  });




}
