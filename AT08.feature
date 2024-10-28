
# E4-US03 - Registro de usuario
# T1 - Secciones de registro: Registro de estudiante y conductor.

Feature: Registro de usuario
  As a new student or driver
  I want to register for the application
  So that I can create an account and use the platform

  Background:
    Given I am on the registration page

  Scenario: Successful registration for a student
    Given I am on the "Student Registration" page
    And I have entered all required information correctly
    When I click the "Register" button
    Then I should see a confirmation message saying "Registration successful"
    And I should be redirected to the student dashboard

  Scenario: Successful registration for a driver
    Given I am on the "Driver Registration" page
    And I have entered all required information correctly
    When I click the "Register" button
    Then I should see a confirmation message saying "Registration successful"
    And I should be redirected to the driver dashboard

  Scenario: Registration attempt with missing information
    Given I am on the registration page
    And I have not entered all the required fields
    When I click the "Register" button
    Then I should see an error message saying "Please fill in all required fields"
    And I should remain on the registration page

  Scenario: Registration with an already used email
    Given I am on the registration page
    And I have entered an email that is already registered
    When I click the "Register" button
    Then I should see an error message saying "Email already in use"
    And I should remain on the registration page
