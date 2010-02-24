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
      And I fill in "Nom de catégorie" with "test"
      And I submit
    Then I should not have infos

  Scenario: creating infos with all details
    When I go to the new info page
    And I fill in the following:
      | Nom de catégorie | categorie  |
      | Name      | Internes                |
      | Notes     | notes                   |
      | Url       | http://www.site.domain  |
      | Téléphone | 0478787878              |
      | Raccourci | 303030                  |
      | Fax       | 0404040404              |
      | Adresse   | 15, rue bof             |
      | CP        | 696969                  |
      | Ville     | Lyon                    |
    And I submit
    Then I should see details table
      | Notes     | : | notes                                           |
      | Téléphone(s)| : | 0478787878, 303030 (raccourci), 0404040404 (fax)|
      | Adresse   | : | 15, rue bof 696969 - Lyon                       |
      | Site Web  | : | http://www.site.domain                          |

  Scenario: adding notes to info
    Given an info exists
    When I go to the info's edit page
      And I fill in "Notes" with "réponse 24h/24, 7j/7"
      And I submit
    Then I should see "Notes :"
      And I should see "réponse 24h/24, 7j/7"

  Scenario: adding url to info
    Given an info exists
    When I go to the info's edit page
      And I fill in "Url" with "http://www.site.domain"
      And I submit
    Then I should see "Site Web :"
      And I should see "http://www.site.domain"

  Scenario: adding phone numbers to info
    Given an info exists
    When I go to the info's edit page
      And I fill in "Téléphone" with "0478787878"
      And I fill in "Raccourci" with "307374"
      And I fill in "Fax" with "0478787879"
      And I submit
    Then I should see "Téléphone(s) :"
      And I should see "(raccourci)"
      And I should see "307374"
      And I should see "0478787878"
      And I should see "(fax)"
      And I should see "0478787879"

  Scenario: adding addresse to info
    Given an info exists
    When I go to the info's edit page
      And I fill in "Adresse" with "15, rue des Lilas"
      And I fill in "CP" with "69001"
      And I fill in "Ville" with "Lyon"
      And I submit
    Then I should see "Adresse :"
      And I should see "15, rue des Lilas 69001 - Lyon"

  Scenario: adding a new category to info
    Given an info exists
    When I go to the info's edit page
      And I fill in "Nom de catégorie" with "lacategorie"
      And I submit
    Then a category should exist with name: "lacategorie"
      And I should see "Catégorie :"
      And I should see "lacategorie"
