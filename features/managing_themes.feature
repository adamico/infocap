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

  Scenario: creating valid themes
    When I go to the new theme page
      And I fill in "Name" with "theme"
      And I submit
    Then 1 themes should exist

  Scenario: adding a new theme to an existing category
    Given a category exists
    When I go to the category's edit page
      And I fill in "Nom de thème" with "letheme"
      And I submit
    Then a theme should exist with name: "letheme"
      And I should see "Thème :"
      And I should see "letheme"
