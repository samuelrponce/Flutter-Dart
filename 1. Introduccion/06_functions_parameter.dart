void main() {
  print( greetEveryone() ); 
  
  print( 'Suma: ${ addTwoNumbers( 10 )}' );
  
  print( 'Suma: ${ addTwoNumber( 10, 20 )}' );
  
  print( greetPerson(name: 'Fernando', message: 'Hi, '));

}
String greetEveryone() => 'Hello everyone!';

int addTwoNumbers (int a, [int b = 0]){
  //b = b ?? 0;
  //b ??= 0;
  
  return a + b;
}

int addTwoNumber(int a, int b) => a + b ;

String greetPerson({required String name, String message = 'Hola, '}){
  return '$message $name';
}