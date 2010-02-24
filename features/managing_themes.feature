Feature: managing themes and categories
  In order to categorize useful infos for my service
  As an admin
  I want to manage themes for categories

  Scenario: creating valid categories
    When I go to the new category page
      And I fill in "Name" with "categorie"
      And I submit
    Then 1 categories should exist

  Scenario: creating invalid categories
    When I go to the new category page
      And I submit
    Then I should not have categories
