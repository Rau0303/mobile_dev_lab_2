/*
task_2_1 =>
Напишите метод, который получает в качестве параметра два числа 
(А и В) и выводит на экран все четные числа из диапазона А ... В.
 */
void task_2_1(int A, int B){
  if(A<B){
    for(int i =A;i<B+1;i++){
      if(i%2==0){
        print(i);
      }
    }
  }
  else{
    for(int i=B;i<A+1;i++){
      if(i%2==0){
        print(i);
      }
    }
  }
}
/*
task_2_2 =>
Напишите метод, 
который принимает в качестве параметров целое число и 
возвращает сумму его цифр.
*/ 
int task_2_2(int number){
  int sum = 0;
  while(number>0){
    sum+=number % 10 ;
    number= (number ~/ 10); 
  }
  return sum;
}
/*
task_2_3 =>
Напишите метод, который принимает в качестве параметра целое число и 
возвращает количество цифр в этом числе.
 */
int task_2_3(int number){
  int count =0;
  while(number>0){
    number=number~/10;
    count++;
  }
  return count;
}
/*task_2_4 =>
Напишите метод, который принимает в качестве
параметра целое число и возвращает самую большую цифру в этом числе.
 */
int task_2_4(int number){
  List<int> arr = [];
   while(number>0){
    arr.add(number % 10 );
    number= (number ~/ 10); 
  }
  int max = arr.first;

  for(int i=0;i<arr.length;i++){
    if(max<arr[i]){
      int temp = max;
      max = arr[i];
      arr[i] = temp;
    }
  }
  return max;
}

int fib(int number){
  if(number==0){
    return 0;
  }
  else if(number == 1){
    return 1;
  }
  return fib(number - 1) +fib(number -2);
}



void main(List<String> arguments) {
  
  print(fib(6));
}
