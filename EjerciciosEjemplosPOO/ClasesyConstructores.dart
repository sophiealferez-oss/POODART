//què es una clase? es un molde que agrupa datos y comportamientos


//Situación: crear una clase Estudiante que almacene el nombre y la edad 
class Estudiante { //aquí declara la clase que sirve como molde
  final String nombre; //atributos que no cambian después de crear el objeto
  final int edad; //atributos que no cambian después de crear el objeto

  Estudiante(this.nombre, this.edad); //es el constructor, recibe y asigna valores

  void presentarse() { //es un método, ultiza los atributos del objeto mediante la interpolacion de la variable
    print('Hola, soy $nombre y tengo $edad años');
  }
}

void main() { //es el punto de entrada del programa, crea un objeto y ejecuta su metodo
  final estudiante = Estudiante('Ana', 19);
  estudiante.presentarse();
}
