class Juego < ActiveRecord::Base
  has_many :votos
  validates_presence_of :titulo
end
