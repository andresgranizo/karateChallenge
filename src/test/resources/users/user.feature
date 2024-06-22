Feature: Test Demoblaze Signup and Login APIs

Scenario: Signup with new user
    Given url baseUrl + '/signup'
    And request { "username": "newuser", "password": "newpassword" }
    When method post
    Then status 200
    And print 'Signup response:', response

Scenario: Signup with existing user
    Given url baseUrl + '/signup'
    And request { "username": "existinguser", "password": "password" }
    When method post
    Then status 200
    And print 'Signup existing user response:', response

Scenario: Login with correct credentials
    Given url baseUrl + '/login'
    And request { "username": "existinguser", "password": "password" }
    When method post
    Then status 200
    And print 'Login response:', response

Scenario: Login with incorrect credentials
    Given url baseUrl + '/login'
    And request { "username": "wronguser", "password": "wrongpassword" }
    When method post
    Then status 200
    And print 'Login incorrect credentials response:', response
