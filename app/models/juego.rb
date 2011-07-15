class Juego < ActiveRecord::Base
  has_many :votos, :dependent => :destroy
  validates_presence_of :titulo, :message=> "Por favor inserte un titulo"

  def publish!
    self.published_on = Date.today
    self.save
  end

  def published?
    !self.published_on.nil?
  end
end



