//Situación: diferentes vehículos comparten una marca y una descripción general, pero se desplazan de
//manera diferente.

class Vehiculo {
  //vehiculo es la superclase, contiene marca y los metodos describir y desplazarse
  final String marca;

  Vehiculo(this.marca);

  void describir() {
    //describir se utiliza directamente desde la clase padre sin reescribirlo
    print('El vehículo se desplaza.');
  }
}

class Automovil extends Vehiculo {
  //automovil extends vehiculo y bicicleta extends vehiculo declaran herencia
  final int puertas;

  Automovil(String marca, this.puertas)
    : super(marca); //super(marca) inicializa la parte heredada de cada objeto

  @override //identifica que las clases hijan reemplazan desplazarse()
  void desplazarse() {
    print('El automovil $marca avanza con motor.');
  }
}

class Bicicleta extends Vehiculo {
  Bicicleta(String marca) : super(marca);

  @override
  void desplazarse() {
    print('La bicicleta $marca avanza pedalenado');
  }
}

class Moto extends Vehiculo {
  Moto(String marca) : super(marca);

  @override
  void desplazarse() {
    print('La moto $marca avanza con Clutch');
  }
}

void main() {
  final auto = Automovil('Toyota', 4);
  final bici = Bicicleta('Trek');
  final moto = Moto('Ducati');

  auto.describir();
  auto.desplazarse();
  print('Puertas: ${auto.puertas}');
  bici.describir();
  bici.desplazarse();
  moto.describir();
  moto.desplazarse();
}
