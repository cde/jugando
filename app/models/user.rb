class User < ActiveRecord::Base
  validates_presence_of :nombre
  has_many :addresses
end
