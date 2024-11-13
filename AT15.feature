
Feature: Identificación de usuarios frecuentes

  Como pasajero frecuente,
  quiero poder marcar ciertos conductores como favoritos,
  para facilitar la reserva de futuros viajes con ellos.

  Scenario: Pasajero marca un conductor como favorito exitosamente
    Given que el pasajero ha completado un viaje con un conductor
    When el pasajero selecciona la opción de marcar al conductor como favorito
    Then el sistema guarda al conductor en la lista de favoritos del pasajero
    And el pasajero puede ver al conductor en su lista de conductores favoritos

  Scenario: Pasajero intenta marcar un conductor como favorito sin viaje completado
    Given que el pasajero no ha completado un viaje con un conductor recientemente
    When el pasajero intenta marcar al conductor como favorito
    Then el sistema muestra un mensaje indicando que solo puede marcar como favorito a conductores de viajes completados

  Scenario: Pasajero elimina a un conductor de su lista de favoritos
    Given que el pasajero tiene un conductor en su lista de favoritos
    When el pasajero selecciona la opción de eliminar al conductor de favoritos
    Then el sistema remueve al conductor de la lista de favoritos del pasajero
