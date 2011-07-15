require 'spec_helper'

describe VotosController do
  fixtures :all
  describe 'CREATE' do
    before do
      @juego = juegos(:pacman)
    end
    it "should add voto to pacman" do
      get 'create', :juego_id => @juego.id
#      response.should
    end
  end

end
