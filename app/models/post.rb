class Post < ActiveRecord::Base
  attr_accessible :texto, :titulo, :usuario
    validates :titulo, :presence => true
    validates :texto, :presence => true
    has_many :comentarios
end
