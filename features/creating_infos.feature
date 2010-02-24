Feature: creating infos
  In order to quickly access useful infos for my service
  As an admin
  I want to create infos and add details

  Scenario: creating valid infos
    When I go to the new info page
      And I fill in "Name" with "Internes"
      And I submit
    Then 1 infos should exist

  Scenario: can't create infos without name
    When I go to the new info page
      And I submit
    Then I should not have infos

  Scenario: adding phone number to info
    Given an info exists with name: "Internes"
    When I go to the info's page
      And I follow "New PhoneNumber"
      And I fill in "Numéro" with "307374"
      And I submit
    Then I should see "Internes"
      And I should see "307374"
