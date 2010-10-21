Feature: Votos
  In order to determine which juego to give
  people need to be able to vote for the ones they like

  Background: Make sure that we have a juego
    Given I go to the juegos page
    And I follow "New Juego"
    And I fill in "Titulo" with "Pacman"
    And I fill in "Descripcion" with "Eterno Pacman.."
    And I press "Create"

  Scenario: viewing votos already cast
    When I go to the juegos page
    Then I should see "0 votos"

  Scenario: voting on a juego
    When I go to the juegos page
    And I follow "+1"
    Then I should see "1 voto"