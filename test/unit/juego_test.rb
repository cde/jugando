require 'test_helper'

class JuegoTest < ActiveSupport::TestCase
  #Ejemplo de unit test
  test "juego no se debe crear sin titulo" do
    juego = Juego.new
    assert !juego.save
  end
end
