class VotosController < ApplicationController

  def index
    redirect_to(juegos_path)
  end

  def create
    raise "blah"
    juego = Juego.find(params[:juego_id])
    voto = juego.votos.build

    if voto.save!
      flash[:notice] = 'El Juego fue creado con exito.'
      raise
    else
      flash[:notice] = 'Oops, no pudimos contar tu voto.'
    end
    redirect_to(juegos_path)
  end

end