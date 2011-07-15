require 'spec_helper'

  describe Juego do

    before do
      @juego = Juego.new(:titulo => 'pacman')
    end

    it "should have titulo equal to pacman " do
      @juego.titulo.should == 'pacman'
    end

  end

  describe Juego do
    subject { Juego.new :titulo => 'angry birds' }
    it "sets published on" do
      subject.publish!
      subject.published_on.should == Date.today
    end
  end

  describe Juego do
    let(:juego) { Juego.new :titulo => 'angry birds' }
    specify{juego.should_not be_published}
  end

__END__
#let me be!
    let(:juego) { Juego.new :titulo => 'pacman',
                            :url => 'http://www.pacman.com' }

    it "should be valid when testing using let" do
      juego.should be_valid
    end

##  subject
  subject do
    juego = Juego.new :titulo => 'pacman', :url => 'http://www.pacman.com',
                      :descripcion => 'Juego de mi epoca'
    juego.save!
    juego
  end

  it { should be_valid }
  its(:errors) { should be_empty }
  its(:titulo) { should == 'pacman' }
  its(:url) { should == 'http://www.pacman.com' }
  its(:descripcion) { should == 'Juego de mi epoca' }
end

describe Juego do
  it { should be_invalid }
end

describe Juego do
  subject { Juego.new :titulo => 'Mi juego' }
  it "sets published on" do
    subject.publish!
    subject.published_on.should == Date.today
  end
end

describe Juego do
  it 'requires titulo' do
    lambda do
      j = Juego.create(:titulo => nil)
      j.errors[:titulo].should_not be_empty
    end.should_not change { Juego.count }
  end
end

describe Juego do
  it { should validate_presence_of(:titulo) }
end


describe Juego do
  
  it "creates an object" do
    expect {

      Juego.create!(:titulo => "pacman")

    }.to change { Juego.count }

  end

   it "creates an object" do
    lambda {

      Juego.create!(:titulo => "pacman")

    }.should change{ Juego.count }.by(1)
   end

   #or 

  it "creates an object" do
    lambda {

      Juego.create!(:titulo => "pacman")

    }.should change { Juego.count }.from(2).to(3)
  end
end