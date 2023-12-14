class FunctionsAndCollections {
  //mandatory parameters
  int sum(int a, int b) {
    return a + b;
  }

  //Named parameters
  //Their are nullables by default.
  int sub({int? a, int? b}) {
    if (a != null && b != null) {
      return a - b;
    }
    return 0;
  }

//But we can force them to be passed a parameter

  int mult({required int a, required int b}) {
    return a * b;
  }

  //We can use a default value

  double div({double a = 0, double b = 0}) {
    return a / b;
  }

  //Optional and no named parameters.

  double rest([double a = 0, double b = 0]) {
    return a % b;
  }

  //Arrow function

  String getName() => "Paula";

  //anonymous function

  var function = () {
    print("anonymous function");
  };

  void anonymousFunction() {
    print(function());
  }
  //we can pass a function as parameter

  void functionEx(Function anonymousFunctionParameter) {
    anonymousFunctionParameter();
  }

  void functionTypeDef(CreateNewType anonymousFunctionParameter) {
    anonymousFunctionParameter("new name");
  }

  //list
  void list() {
    var numbers = List.generate(10, (index) => index);
    numbers.forEach(print);

    var matrix = [
      [0, 1],
      [2, 3]
    ];
    //transform in list
    var list = matrix.expand((element) => element).toList();

    //search

    var search = list.any((element) => element == 2);

    search ? print("there is number 2") : ("there isn't number 2");

    //every
    var every = list.every((element) => element == 2);

    every
        ? print("Every element is equal to 2")
        : print("Not every element is equal to 2");

    //sort

    var messyList = [3, 54, 62, 12, 324];
    print(messyList);
    messyList.sort();
    print(messyList);
  }

  // set

  void set() {
    //The set does not allow repeating information
    var setNumbers = <int>{};

    setNumbers.add(1);
    setNumbers.add(1);
    setNumbers.add(2);
    setNumbers.add(2);
    setNumbers.add(2);
    setNumbers.add(3);

    print(setNumbers);
    var setNumbers2 = <int>{3, 4, 5, 2};
    print(setNumbers.union(setNumbers2));
    print(setNumbers.difference(setNumbers2));
    print(setNumbers.intersection(setNumbers2));
    print(setNumbers.lookup(2));
  }
}
//typedef

typedef CreateNewType = void Function(String);
