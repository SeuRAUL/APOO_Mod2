class Prova < ActiveRecord::Base
  belongs_to :user
  attr_accessible :descricao, :materia
end
