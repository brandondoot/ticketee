Feature: Viewing Tickets
  In order to view the tickets for a project
  As a user
  I want to see them on the projects page

  Background:
    Given there is a project called "TextMate 2"
    And that project has a ticket:
      | title          | description                   |
      | Make it shiny! | Gradients! Starbursts! Oh my! |
    And there is a project called "Internet Explorer"
    And that project has a ticket:
      | title                | description  |
      | Standards Compliance | Isn't a joke |

    And I am on the homepage

  Scenario: Viewing tickets for a given project
    When I follow "TextMate 2"
    Then I should see "Make it shiny!"
    And I should not see "Standards Compliance"
    When I follow "Make it shiny!"
    Then I should see "Make it shiny" within "#ticket h2"
    And I should see "Gradients! Starbursts! Oh my!"

    When I follow "Ticketee"
    And I follow "Internet Explorer"
    Then I should see "Standards Compliance"
    And I should not see "Make it shiny!"
    When I follow "Standards Compliance"
    Then I should see "Standards Compliance" within "#ticket h2"
    And I should see "Isn't a joke"

