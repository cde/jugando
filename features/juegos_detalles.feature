Feature: Juegos Detalles
  In order to learn about juegos,
  People need to be able to see them in a list

  Background: Make sure we have a juego in the list
    Given I go to the juegos page
    And I follow "New Juego"
    When I fill in "Titulo" with "Pacman"
    And I fill in "Descripcion" with "Eterno Pacman."
    And I press "Create"

  Scenario: Viewing a juego detail page
    When I go to the juegos page
    And I follow "Pacman"
    Then I should see "Eterno Pacman."
    And I should not see "New Juego"

  Scenario: Deleting juego
    When I go to the juegos page
    When I follow "Delete"
    Then I should not see "Pacman"
    And I should see "New Juego"

