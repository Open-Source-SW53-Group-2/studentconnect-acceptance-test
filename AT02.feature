
Feature: Generar ingresos compartiendo mi vehículo
  Como estudiante universitario con vehículo propio,
  Quiero ofrecer lugares en mi auto a otros estudiantes que van hacia la universidad
  Para reducir mis gastos de transporte y generar ingresos adicionales.

  Scenario: Publicación de disponibilidad de asientos
    Given el usuario tiene un vehículo con lugares disponibles
    When accede a la plataforma
    Then podrá publicar su ruta y disponibilidad de asientos para que otros estudiantes puedan reservar

  Scenario: Gestión de reservas
    Given el usuario ha publicado su disponibilidad
    When los pasajeros reservan lugares en su vehículo
    Then podrá ver y gestionar todas las reservas en su aplicación, confirmando los pasajeros y horarios

  Scenario: Modificación de la disponibilidad
    Given el usuario ya ha publicado su disponibilidad
    When necesita modificar el horario o la cantidad de asientos disponibles
    Then podrá editar la publicación para actualizar su disponibilidad de asientos y horarios

  Scenario: Cancelación de una reserva por el conductor
    Given el usuario ha recibido reservas de pasajeros
    When necesita cancelar una de las reservas
    Then podrá cancelar la reserva y los pasajeros recibirán una notificación de la cancelación

  Scenario: Revisión de pasajeros
    Given el usuario ha completado un viaje con pasajeros
    When finaliza el viaje
    Then podrá dejar una reseña o calificación a los pasajeros y recibir una calificación a cambio

  Scenario: Cobro de tarifas
    Given el usuario ha transportado a pasajeros en su vehículo
    When el viaje se completa exitosamente
    Then recibirá los pagos acordados por los pasajeros a través de la plataforma

  Scenario: Ver ganancias acumuladas
    Given el usuario ha realizado varios viajes compartidos
    When accede a la sección de ganancias
    Then podrá ver un resumen de sus ingresos acumulados y los detalles de cada transacción

  Scenario: Publicar una ruta recurrente
    Given el usuario viaja regularmente a la universidad
    When publica su disponibilidad de asientos
    Then podrá establecer una ruta recurrente que se publique automáticamente en días y horarios específicos
