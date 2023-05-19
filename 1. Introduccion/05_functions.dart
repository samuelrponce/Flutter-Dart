void main() {
  print( greetEveryone() ); 
  
  print( 'Suma: ${ addTwoNumbers( 10 )}' );
  
  print( 'Suma: ${ addTwoNumber( 10, 20 )}' );

}
String greetEveryone() => 'Hello everyone!';

int addTwoNumbers (int a, [int b = 0]){
  //b = b ?? 0;
  //b ??= 0;
  
  return a + b;
}

int addTwoNumber(int a, int b) => a + b ;