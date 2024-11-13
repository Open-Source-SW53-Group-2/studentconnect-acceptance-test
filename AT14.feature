
Feature: Opciones de seguridad adicionales para conductores

  Como conductor,
  quiero poder acceder a opciones adicionales de seguridad, como compartir mi ubicación en tiempo real,
  para garantizar un viaje seguro.

  Scenario: Conductor activa el compartir ubicación en tiempo real exitosamente
    Given que el conductor ha iniciado una ruta
    When el conductor activa la opción de compartir ubicación en tiempo real
    Then el sistema comienza a transmitir la ubicación del conductor en tiempo real
    And personas autorizadas pueden ver la ubicación del conductor durante el viaje

  Scenario: Conductor intenta activar el compartir ubicación sin ruta activa
    Given que el conductor no ha iniciado una ruta
    When el conductor intenta activar la opción de compartir ubicación en tiempo real
    Then el sistema muestra un mensaje indicando que debe iniciar una ruta para compartir la ubicación en tiempo real

  Scenario: Conductor desactiva la opción de compartir ubicación en tiempo real
    Given que el conductor ha iniciado una ruta y está compartiendo su ubicación en tiempo real
    When el conductor desactiva la opción de compartir ubicación en tiempo real
    Then el sistema deja de transmitir la ubicación del conductor
    And las personas autorizadas ya no pueden ver la ubicación en tiempo real
