
Feature: Compartir viajes con compañeros de universidad
  Como estudiante universitario sin vehículo,
  Quiero compartir viajes con compañeros que se dirijan a la universidad
  Para reducir costos y llegar de manera más eficiente.

  Scenario: Búsqueda de viajes disponibles
    Given el usuario necesita transporte hacia la universidad
    When accede a la plataforma
    Then podrá buscar y ver una lista de conductores disponibles que se dirijan a su universidad en un horario compatible

  Scenario: Reserva de un viaje
    Given el usuario ha encontrado un viaje disponible
    When selecciona al conductor y realiza la reserva
    Then podrá confirmar su lugar en el vehículo y recibir detalles sobre el viaje

  Scenario: Búsqueda de viajes sin resultados
    Given el usuario necesita transporte hacia la universidad
    When accede a la plataforma y no hay conductores disponibles
    Then se le mostrará un mensaje indicando que no hay viajes disponibles en el horario deseado

  Scenario: Filtrar viajes por hora de salida
    Given el usuario necesita transporte en un horario específico
    When accede a la plataforma y aplica un filtro por hora de salida
    Then verá una lista de viajes disponibles que coincidan con la hora solicitada

  Scenario: Cancelación de una reserva
    Given el usuario ha reservado un viaje previamente
    When selecciona la opción de cancelar la reserva
    Then se cancelará la reserva y el usuario recibirá una confirmación de la cancelación

  Scenario: Modificación de la reserva
    Given el usuario ha reservado un viaje y necesita cambiar la hora
    When selecciona la opción de modificar la reserva
    Then podrá ver una lista de nuevos horarios disponibles y actualizar su reserva

  Scenario: Confirmación del viaje por parte del conductor
    Given el usuario ha reservado un viaje
    When el conductor confirma la aceptación del viaje
    Then el usuario recibirá una notificación de que su reserva ha sido confirmada por el conductor

  Scenario: Recepción de información adicional del conductor
    Given el usuario ha reservado un viaje exitosamente
    When el conductor proporciona detalles adicionales (vehículo, ubicación de recogida)
    Then el usuario podrá ver esos detalles en su perfil o en la sección de reservas

  Scenario: Compartir viaje con otros compañeros
    Given el usuario ha encontrado un viaje con disponibilidad para otros pasajeros
    When selecciona la opción de compartir el viaje
    Then podrá invitar a otros compañeros de universidad a unirse al mismo viaje

  Scenario: Ver historial de viajes
    Given el usuario ha realizado viajes en la plataforma
    When accede a la sección de historial de viajes
    Then podrá ver una lista de sus viajes anteriores con detalles de cada uno
