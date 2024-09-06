
Feature: Reserva de Viaje
  Como Usuario,
  Quiero poder reservar un asiento en el viaje disponible
  Para garantizar mi lugar.

  Scenario: Confirmación de reserva
    Given el usuario ha seleccionado un viaje
    When accede a la página de detalles del viaje
    Then podrá encontrar la opción para reservar un asiento y confirmar la reserva

  Scenario: Verificación de disponibilidad de asientos
    Given el usuario ha accedido a la página de detalles del viaje
    When verifica la disponibilidad de asientos
    Then podrá ver cuántos asientos quedan disponibles antes de confirmar la reserva

  Scenario: Notificación de éxito en la reserva
    Given el usuario ha confirmado la reserva de un asiento
    When la transacción es exitosa
    Then el usuario recibirá una notificación de confirmación del asiento reservado

  Scenario: Cancelación de la reserva por parte del usuario
    Given el usuario ha reservado un asiento en un viaje
    When decide cancelar la reserva
    Then podrá hacerlo antes de la hora de salida y recibirá una confirmación de cancelación

  Scenario: Ver reservas activas
    Given el usuario ha reservado varios viajes
    When accede a su perfil
    Then podrá ver una lista de todas sus reservas activas y sus detalles
