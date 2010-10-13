require 'spec_helper'

describe  Juego do
  
#  it "should be invalid when titulo is null" do
#    juego = Juego.create(:url => 'http://www.pacman.com')
#    juego.should be_valid
#
#  end

  let(:juego){Juego.create :titulo => 'pacman', :url => 'http://www.pacman'}
  it "should be valid " do
    juego.should be_valid
  end

end