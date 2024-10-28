
# E1-US03 - Evaluar la seguridad del viaje
# T1 - Sección de reseñas de conductores: Agregar una tabla con información de las reseñas de los conductores.

Feature: Evaluar la seguridad del viaje
  As a user
  I want to evaluate the safety of my trip by reviewing driver feedback
  So that I can make informed decisions when choosing a driver

  Background:
    Given I am a registered user
    And I have logged into the application

  Scenario: Display a table of driver reviews with valid data
    Given I navigate to the "Driver Reviews" section
    When the system loads the page
    Then I should see a table displaying the driver's name, review date, rating, and comment
    And each entry should have valid review data

  Scenario: Display a message when no reviews are available
    Given I navigate to the "Driver Reviews" section
    And there are no reviews available for the driver
    When the system loads the page
    Then I should see a message saying "No reviews available for this driver"

  Scenario: Sort the reviews by rating
    Given I navigate to the "Driver Reviews" section
    And there are reviews displayed in the table
    When I click on the "Rating" column header
    Then the reviews should be sorted by rating in ascending order

  Scenario: Filter reviews by rating
    Given I navigate to the "Driver Reviews" section
    And there are reviews displayed in the table
    When I filter the reviews by selecting a rating of 4 stars or higher
    Then only reviews with a rating of 4 stars or higher should be displayed in the table

  Scenario: Display review details
    Given I navigate to the "Driver Reviews" section
    And there are reviews displayed in the table
    When I click on a review entry
    Then I should see the full details of that review, including the driver's name, the full review comment, and the rating
