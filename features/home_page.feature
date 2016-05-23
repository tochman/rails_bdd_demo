Feature: Home page


  Scenario: Viewing application's home page
    Given there's a post titled "Intro to BDD" with "BDD rocks!" content
    When I am on the homepage
    Then I should see the "Intro to BDD" post