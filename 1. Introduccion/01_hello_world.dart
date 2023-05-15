void main() {
  //String myName = 'Fernando';
  // late final myName; el final es para cuando no se quiera volver a cambiar el valor de la variable y el late es para una inicializacion tardia
  //final se asigna en tiempo de ejecucion
  //const en tiempo de construccion
  const myName = 'Fernando';
  
  print('Hola $myName');
  print('Hola ${myName.toUpperCase()}');
  print('Hola ${1+1}');
}
