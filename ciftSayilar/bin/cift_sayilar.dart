import 'dart:io';

void main() {
  List<double> numbers = [];

  for (int i = 1; i <= 10; i++) {
    print("Please enter number $i:");
    
    String? input = stdin.readLineSync();
    
    if (input != null && input.isNotEmpty) {
      double? number = double.tryParse(input);
      
      if (number != null) {
        numbers.add(number);
      }else {
        print("Invalid input. Please enter a valid input");
        i--; 
      }
    } else {
      print("No entry. Please enter number.");
      i--;
      }
  }
  removeOddNumbers(numbers);
  if (numbers.isEmpty){
    print("There is no even number in the list");
  }else{
  print("Even numbers: $numbers");
  }
}

void removeOddNumbers(List<double> nums) {
  nums.removeWhere((numb) => numb % 2 != 0); 
}