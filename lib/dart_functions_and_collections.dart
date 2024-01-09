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

  void mapFunction() {
    Map<String, String> studants = {"studant1": "math", "studant2": "science"};
    print(studants);
    final studantsEx2 = <String, String>{
      "studant1": "math",
      "studant2": "science"
    };
    print(studantsEx2);

    //null safety
    Map<String, String>? studantEx3 = null;
    print(studantEx3);
    Map<String?, String> studantEx4 = {null: "math"};
    print(studantEx4);
    Map<String, String?> studantEx5 = {"studant1": null};
    print(studantEx5);

    final products = <String, int>{};

    products.putIfAbsent("desk", () => 3);
    print(products);

    products.update("desk", (value) => 2);
    products.update(
      "chair",
      (value) => 2,
      ifAbsent: () => 2,
    );
    print(products);

    products.forEach((key, value) {
      print("key: $key");
      print("value: $value");
    });

    //async

    for (var entry in products.entries) {
      print("key: ${entry.key}");
      print("value: ${entry.value}");
    }

    final newProducts =
        products.map((key, value) => MapEntry(key.toUpperCase(), value));

    print(newProducts);
  }

  void exeptions() {
    try {
      var age = "20 years";

      int.parse(age);

      print(age);
    } on FormatException catch (error, s) {
      print(error);
      print(s);
    } on TypeError catch (error, s) {
      print(error);
      print(s);
    } catch (error, s) {
      print(error);
      print(s);
    } finally {
      print("Always printed");
    }
  }
}
//typedef

typedef CreateNewType = void Function(String);
