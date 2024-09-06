
Feature: Recibir notificaciones en tiempo real
  Como estudiante pasajero,
  Quiero recibir notificaciones en tiempo real sobre mi viaje
  Para estar al tanto de cualquier cambio en la ruta o el horario.

  Scenario: Actualización de la hora de llegada
    Given el usuario ha reservado un viaje
    When haya un cambio en la ruta o el horario
    Then el usuario recibirá una notificación en tiempo real indicando el nuevo tiempo estimado de llegada

  Scenario: Notificación de recogida
    Given el conductor está llegando a recoger a un pasajero
    When esté cerca al punto de encuentro
    Then el usuario recibirá una notificación informándole que el conductor está próximo

  Scenario: Notificación de cancelación del viaje
    Given el usuario ha reservado un viaje
    When el conductor cancela el viaje
    Then el usuario recibirá una notificación en tiempo real informando sobre la cancelación del viaje

  Scenario: Notificación de tráfico en la ruta
    Given el usuario ha reservado un viaje
    When hay un retraso en la ruta debido al tráfico
    Then el usuario recibirá una notificación en tiempo real informándole del retraso y la nueva hora estimada de llegada

  Scenario: Notificación de cambio de conductor
    Given el usuario ha reservado un viaje
    When el conductor original no puede realizar el viaje y se asigna un nuevo conductor
    Then el usuario recibirá una notificación en tiempo real con la información del nuevo conductor
