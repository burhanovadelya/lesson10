import 'dart:io';

void main() {
binarySearch(0, 128);
}

void binarySearch(int min, max){
  print('загадайте в уме число от 1 до 128');
  int min=0;
  int max=128;
  int mid=(min+max)~/ 2;
  String answer="";
  int count=0;
  while(answer !="yes"){
    count++;
  print('ваше число $mid?');
  answer = stdin.readLineSync()!;
  if (answer=='greater'){
    min=mid;
    mid=(min+max) ~/ 2;
    count++;
  } else if (answer=='less'){
    max=mid;
    mid=(min+max) ~/ 2;
    count++;
  } else if (answer=='yes'){
    print('$count');
    print('конец игры!');
  } else {
    print('введите корректные данные');
    answer = stdin.readLineSync()!;
  }

  }
}
  
  
