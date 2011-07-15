class VotosController < ApplicationController

  def create

    juego = Juego.find(params[:juego_id])
    voto = juego.votos.create(params[:voto])
    if voto.save!
      flash[:notice] = 'Un voto mas! Yeh! '
    else
      flash[:notice] = 'Oops, no pudimos contar tu voto.'
    end
    redirect_to juegos_path
  end

end
