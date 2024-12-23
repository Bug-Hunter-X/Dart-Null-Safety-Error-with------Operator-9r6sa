```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  void myMethod() {
    // Solution: Explicit null check or using a late variable
    int value = _myVariable!; //Using ! asserts that _myVariable is not null
  }
}

//Alternative solution using late keyword.  Requires initialization before first use.
class MyClass2 {
  late final int _myVariable; 

  MyClass2(int myVariable) : _myVariable = myVariable;

  void myMethod() {
    int value = _myVariable; //No null check needed
  }
}
```