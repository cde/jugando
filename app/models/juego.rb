class Juego < ActiveRecord::Base
  has_many :votos, :dependent => :destroy
  validates_presence_of :titulo, :message=> "Por favor inserte un titulo"
end
