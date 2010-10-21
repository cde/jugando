require 'spec_helper'

describe  Juego do
  # Ejemplo tipico de rspec
  it "should be invalid when titulo is null" do
    juego = Juego.create(:url => 'http://www.pacman.com')
    juego.should_not be_valid
  end

  #let me be!
  let(:juego){Juego.create :titulo => 'pacman', :url => 'http://www.pacman'}
  it "should be valid when testing using let" do
    juego.should be_valid
  end

  #subject  
  subject do
    juego = Juego.new :titulo => 'pacman', :url => 'http://www.pacman', :descripcion => 'Juego de mi epoca'
    juego.save!
    juego
  end

  it { should be_valid }
  its(:errors) { should be_empty }
  its(:titulo) { should == 'pacman' }
  its(:url) { should == 'http://www.pacman'}
  its(:descripcion) { should == 'Juego de mi epoca' }

end