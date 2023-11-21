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
}
