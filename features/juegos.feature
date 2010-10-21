Feature: Juegos
  In order to see a list of potential juegos to play
  people need to be able to create and edit them

  Scenario: Getting to the new juego page
    When I go to the juegos page
    And I follow "New Juego"
    Then I should see a "Crear" button

  Scenario: Creating juego
    Given I go to the juegos page
    And I follow "New Juego"
    When I fill in "Titulo" with "Pacman"
    And I fill in "Descripcion" with "Eterno Pacman."
    And I press "Create"
    Then I should see "Pacman"
    And I should be on the juegos page