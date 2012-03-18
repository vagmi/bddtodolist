Feature: Manage Buckets
  As a user
  In order to categorize my items
  I should be able to manage buckets

  Scenario: View buckets
    Given there is a bucket called "work"
    And there is a bucket called "personal"
    And there is a bucket called "fidelity"
    When I visit the buckets page
    Then I should see bucket "work"
    And I should see bucket "personal"
    And I should see bucket "fidelity"

  @javascript
  Scenario: Show javascript message
    When I visit the buckets page
    And I click on "click_me"
    Then I should see "Hello Javascript"
