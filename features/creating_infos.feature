Feature: creating infos
  In order to quickly access useful infos for my service
  As an admin
  I want to create infos and add details

  Scenario: creating valid infos
    When I go to the new info page
      And I fill in "Name" with "Internes"
      And I submit
    Then I should have 1 info

  Scenario: creating invalid infos
    When I go to the new info page
      And I submit
    Then I should not have infos
