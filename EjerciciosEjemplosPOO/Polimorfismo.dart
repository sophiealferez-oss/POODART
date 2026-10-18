//Situación: un sistema simula el envío de notificaciones por correo y SMS usando una única operación
//llamada enviar().
//Objetivo del ejemplo
//Usar una clase abstracta y un método compartido para procesar objetos de distintas subclases sin cambiar
//el bucle principal.

abstract class Notificacion {
  //abstract class define el contrato comun pero no puede instanciare directamente
  final String destinatario;
  Notificacion(this.destinatario);
  String enviar(
    String mensaje,
  ); //enviar esta declarado sin cuerpo y debe implementarse en las clases hijas
}

class NotificacionCorreo extends Notificacion {
  NotificacionCorreo(String correo) : super(correo);

  @override
  String enviar(String mensaje) {
    return 'Correo a $destinatario: $mensaje';
  }
}

class NotificacionSMS extends Notificacion {
  NotificacionSMS(String telefono) : super(telefono);

  @override
  String enviar(String mensaje) {
    return 'SMS a $destinatario: $mensaje';
  }
}

class NotificacionPush extends Notificacion {
  NotificacionPush(String np) : super(np);
  @override
  String enviar(String mensaje) {
    return 'np a $destinatario: $mensaje';
  }

}

void main() {
  final canales = <Notificacion>[
    NotificacionCorreo('ana@ejemplo.com'),
    NotificacionSMS('3001234567'),
    NotificacionPush('np')
  ];

  for (final canal in canales) {
    print(canal.enviar('Tu pedido está listo'));
  }
}
