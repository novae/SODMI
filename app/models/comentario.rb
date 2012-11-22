class Comentario < ActiveRecord::Base
  attr_accessible :post_id, :texto, :usuario
  belongs_to :post
end
