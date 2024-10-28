
# E3-US03 - Reserva de viajes
# T1 - Sección de reserva de viajes: Agregar tabla con información para mostrar y eliminar reservas.

Feature: Reserva de viajes
  As a user
  I want to view and manage my travel reservations
  So that I can see my upcoming trips and cancel them if needed

  Background:
    Given I am logged into the application

  Scenario: Display a table of reservations
    Given I navigate to the "Travel Reservations" section
    When the system loads the page
    Then I should see a table displaying the trip date, destination, driver, and status
    And each reservation should have valid details

  Scenario: Delete a reservation
    Given I am in the "Travel Reservations" section
    And there are reservations displayed in the table
    When I click on the "Delete" button next to a reservation
    Then I should see a confirmation prompt saying "Are you sure you want to delete this reservation?"
    And when I confirm, the reservation should be removed from the table

  Scenario: Display a message when no reservations are available
    Given I navigate to the "Travel Reservations" section
    And there are no reservations available
    When the system loads the page
    Then I should see a message saying "No reservations available"

  Scenario: Cancel deletion of a reservation
    Given I am in the "Travel Reservations" section
    And I attempt to delete a reservation
    When I see the confirmation prompt
    And I click on "Cancel"
    Then the reservation should remain in the table
