import 'package:dart_functions_and_collections/dart_functions_and_collections.dart';

void main() {
  FunctionsAndCollections functionsAndCollections = FunctionsAndCollections();
  int sum = functionsAndCollections.sum(10, 15);
  print("The sum is $sum");
  int sub = functionsAndCollections.sub(a: 10, b: 15);
  print("The subtraction is $sub");
  int mult = functionsAndCollections.mult(a: 10, b: 15);
  print("The multiplication is $mult");
  double div = functionsAndCollections.div(b: 15, a: 10);
  print("The division is $div");
  double rest = functionsAndCollections.rest(15, 10);
  print("The rest is $rest");
}
