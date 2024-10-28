
# E4-US04 - Verificación de identidades
# T2 - API Endpoint para el manejo y demostración de información de los productos.
# Implementar bounded context de IAM para la credencial de usuarios.

Feature: Verificación de identidades para el manejo de productos
  As an API client
  I want to securely access and manage product information
  So that I can demonstrate and handle product data based on user credentials

  Background:
    Given the API is running
    And I have valid user credentials

  Scenario: Successful product data retrieval with valid user credentials
    Given I am an authorized user with valid credentials
    When I send a GET request to the "/api/products" endpoint
    Then I should receive a 200 OK response
    And I should see a list of products with their details (name, price, description)

  Scenario: Unauthorized access to product data with invalid credentials
    Given I am not an authorized user or have invalid credentials
    When I send a GET request to the "/api/products" endpoint
    Then I should receive a 401 Unauthorized response
    And the product data should not be displayed

  Scenario: Valid user credentials in the IAM context for product data access
    Given I am an authorized user in the IAM context
    And I have provided a valid JWT token
    When I request access to the "/api/products" endpoint
    Then the token should be verified
    And I should be allowed to access the product information based on my role

  Scenario: Access denied for user without proper role
    Given I am a valid user but without the required role
    When I attempt to access the "/api/products" endpoint
    Then I should receive a 403 Forbidden response
    And I should see a message saying "Access denied - insufficient permissions"
