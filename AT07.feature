
# E2-US02 - Verificación de identidades
# T1 - Sección de login: Inicio de sesión de estudiante y conductor.

Feature: Verificación de identidades
  As a student or driver
  I want to log into the application securely
  So that I can access my account

  Background:
    Given I am on the login page

  Scenario: Successful login for a student
    Given I am a registered student
    And I enter a valid username and password
    When I click on the "Login" button
    Then I should be redirected to the student dashboard
    And I should see a welcome message with my name

  Scenario: Successful login for a driver
    Given I am a registered driver
    And I enter a valid username and password
    When I click on the "Login" button
    Then I should be redirected to the driver dashboard
    And I should see a welcome message with my name

  Scenario: Unsuccessful login with incorrect credentials
    Given I am a registered user
    And I enter an invalid username or password
    When I click on the "Login" button
    Then I should see an error message saying "Invalid username or password"
    And I should remain on the login page

  Scenario: Login attempt with missing credentials
    Given I am on the login page
    And I have not entered my username or password
    When I click on the "Login" button
    Then I should see an error message saying "Please enter your username and password"
    And I should remain on the login page
