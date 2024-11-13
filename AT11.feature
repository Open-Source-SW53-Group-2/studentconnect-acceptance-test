
Feature: Realizar el pago del plan seleccionado

  Como usuario que ha seleccionado un plan,
  quiero realizar el pago del plan seleccionado
  para activar los beneficios del plan y comenzar a utilizarlos.

  Scenario: Usuario realiza el pago exitosamente
    Given que el usuario ha seleccionado un plan
    And que el usuario ha ingresado a la página de pago
    When el usuario ingresa los datos de su tarjeta de crédito y confirma el pago
    Then el sistema procesa el pago exitosamente
    And el usuario recibe una confirmación de pago
    And los beneficios del plan se activan inmediatamente

  Scenario: Usuario intenta realizar el pago con tarjeta inválida
    Given que el usuario ha seleccionado un plan
    And que el usuario ha ingresado a la página de pago
    When el usuario ingresa datos de tarjeta de crédito inválidos y confirma el pago
    Then el sistema rechaza el pago
    And el usuario recibe un mensaje de error indicando que los datos de pago son inválidos
    And los beneficios del plan no se activan

  Scenario: Usuario cancela el proceso de pago
    Given que el usuario ha seleccionado un plan
    And que el usuario ha ingresado a la página de pago
    When el usuario decide cancelar el proceso de pago
    Then el sistema redirige al usuario a la página de selección de planes
    And los beneficios del plan no se activan
