import 'dart:io';

void main(){
  print("Enter first number:");
  String? number1 = stdin.readLineSync();
  
  
  if(number1 == null || number1.trim().isEmpty){
    print("Nothing entered for first number");
    return;
  }
  
  double? num1 = double.tryParse(number1.trim());

  if(num1 == null){
    print("Entered letter for first number");
    return;
  }

  print("Enter second number:");
  String? number2 = stdin.readLineSync();

  if(number2 == null || number2.trim().isEmpty){
    print("Nothing entered for second number");
    return;
  }

  double? num2 = double.tryParse(number2.trim());

  if(num2 == null){
    print("Entered letter for second number");
    return;
  }

  print("Choose your operation:(sum, sub, multi, div)");
  String? operation = stdin.readLineSync();
  
  switch(operation) {
    case "sum":
      print(num1 + num2);
      break;
    case "sub":
      print(num1 - num2);
      break;
    case "multi":
      print(num1 * num2);
      break;
    case "div":
      if(num2 != 0){
        print(num1 / num2);
      } else{
        print("Cannot divide by 'zero'");
      }
      break;
    default:
      print("Invalid operation.");
  }
}