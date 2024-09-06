
Feature: Realizar pagos de manera segura
  Como pasajero,
  Quiero realizar el pago del viaje a través de la plataforma de forma segura
  Para no tener que manejar efectivo durante el trayecto.

  Scenario: Pago en línea
    Given el usuario ha reservado un viaje
    When confirme su reserva
    Then podrá realizar el pago del viaje a través de la plataforma utilizando métodos de pago seguros como tarjeta de crédito, débito o billeteras digitales

  Scenario: Confirmación de pago
    Given el usuario ha realizado el pago
    When se complete la transacción
    Then recibirá una confirmación del pago en su correo electrónico o dentro de la aplicación

  Scenario: Reembolso por cancelación de viaje
    Given el usuario ha realizado el pago de un viaje
    When el viaje es cancelado por el conductor o por el usuario antes de la hora de salida
    Then recibirá un reembolso automático en su método de pago registrado

  Scenario: Ver historial de pagos
    Given el usuario ha realizado varios pagos en la plataforma
    When accede a la sección de historial de pagos
    Then podrá ver un resumen de todas las transacciones anteriores con detalles de cada pago

  Scenario: Pago dividido entre pasajeros
    Given varios pasajeros están compartiendo el mismo viaje
    When uno de los pasajeros decide dividir el costo del viaje
    Then podrá realizar un pago dividido con los otros pasajeros y cada uno pagará su parte a través de la plataforma
