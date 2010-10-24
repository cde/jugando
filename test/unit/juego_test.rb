require 'test_helper'

class JuegoTest < ActiveSupport::TestCase
  #Ejemplo de unit test
  test "juego no se debe crear sin titulo" do
    juego = Juego.new
    assert !juego.save
  end

  test "validar el titulo" do
    juego = juegos(:pacman)
    assert juego.valid?
    juego.titulo = nil
    assert !juego.valid?
  end
end
