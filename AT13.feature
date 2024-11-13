
Feature: Establecer destinos secundarios

  Como conductor,
  quiero poder establecer destinos secundarios durante mi ruta,
  para recoger a más estudiantes en puntos intermedios.

  Scenario: Conductor establece un destino secundario exitosamente
    Given que el conductor ha iniciado una ruta
    When el conductor selecciona la opción de añadir un destino secundario
    And ingresa la ubicación del destino secundario
    Then el sistema agrega el destino secundario a la ruta actual
    And la ruta se actualiza para incluir el nuevo destino en el orden adecuado

  Scenario: Conductor intenta establecer un destino secundario sin ruta activa
    Given que el conductor no ha iniciado una ruta
    When el conductor intenta agregar un destino secundario
    Then el sistema muestra un mensaje indicando que debe iniciar una ruta antes de agregar destinos secundarios

  Scenario: Conductor decide eliminar un destino secundario previamente agregado
    Given que el conductor ha agregado un destino secundario a su ruta
    When el conductor selecciona la opción de eliminar ese destino secundario
    Then el sistema remueve el destino secundario de la ruta
    And la ruta se actualiza sin el destino eliminado
