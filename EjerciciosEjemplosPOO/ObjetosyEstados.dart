class Producto { // usa parámetros nombrados obligatorios.
  String nombre;
  double precio;
  int stock;

  Producto({required this.nombre, required this.precio, required this.stock});

  void mostrarResumen() {
    print('$nombre | Precio: $precio | Stock: $stock');
  }

  void vender(int cantidad) { //vender() valida la cantidad y utiliza return para detener una operación no válida
    if (cantidad <= 0 || cantidad > stock) {
      print('Venta no válida para $nombre');
      return;
    }
    //El atributo stock no lleva final porque cambia al vender
    stock -= cantidad;
    print('Se vendieron $cantidad unidades de $nombre.');
  }

  double valorInventario() => precio * stock; //valorInventario() devuelve el resultado del cálculo precio 
}

void main() {

  //camiseta y gorra son dos instancias independientes 
  final camiseta = Producto(nombre: 'Camiseta', precio: 45000, stock: 5);
  final gorra = Producto(nombre: 'Gorra', precio: 20000, stock: 10);
  final medias = Producto(nombre: 'nike', precio: 10000, stock: 5);

  camiseta.mostrarResumen();
  gorra.mostrarResumen();
  medias.mostrarResumen();
  camiseta.vender(10);
  camiseta.mostrarResumen();
  print('Valor restante= ${camiseta.valorInventario()}');

  final valorTotalInventario =
      camiseta.valorInventario() +
      gorra.valorInventario() +
      medias.valorInventario();

  print(
    'El valor total del inventario de los productos es de: $valorTotalInventario',
  );
}

// Intenta vender 10 camisetas y observa el mensaje de validación. Luego agrega un tercer producto y calcula
//el valor total de inventario de los tres objetos.
