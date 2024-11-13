
Feature: Cancelar suscripción o plan

  Como usuario que ha adquirido un plan,
  quiero cancelar mi suscripción o plan
  para dejar de recibir los beneficios y evitar cargos futuros.

  Scenario: Usuario cancela la suscripción exitosamente
    Given que el usuario ha iniciado sesión y tiene un plan activo
    And que el usuario accede a la sección de gestión de suscripción
    When el usuario selecciona la opción de cancelar el plan y confirma la cancelación
    Then el sistema procesa la cancelación de la suscripción
    And el usuario recibe una confirmación de cancelación
    And los beneficios del plan se desactivan inmediatamente
    And no se generarán cargos futuros

  Scenario: Usuario intenta cancelar una suscripción sin plan activo
    Given que el usuario ha iniciado sesión y no tiene un plan activo
    When el usuario intenta acceder a la opción de cancelar suscripción
    Then el sistema muestra un mensaje indicando que no hay planes activos para cancelar

  Scenario: Usuario decide no cancelar la suscripción
    Given que el usuario ha iniciado sesión y tiene un plan activo
    And que el usuario accede a la sección de gestión de suscripción
    When el usuario inicia el proceso de cancelación pero decide no confirmar
    Then el sistema mantiene la suscripción activa
    And el usuario sigue recibiendo los beneficios del plan
