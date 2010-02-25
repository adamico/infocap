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

  Scenario: category page shows list of associated infos
    Given a category exists
      And the following infos exist:
        | category    | name  |
        | the category| info1 |
        | the category| info2 |
        | the category| info3 |
        | the category| info4 |
    When I go to the category's page
    Then I should see "info1"
      And I should see "info2"
      And I should see "info3"
      And I should see "info4"

  Scenario: theme page shows list of associated categories
    Given a theme exists
      And the following categories exist:
      | theme     | name  |
      | the theme | cat1  |
      | the theme | cat2  |
      | the theme | cat3  |
      | the theme | cat4  |
    When I go to the theme's page
    Then I should see "cat1"
      And I should see "cat2"
      And I should see "cat3"
      And I should see "cat4"
