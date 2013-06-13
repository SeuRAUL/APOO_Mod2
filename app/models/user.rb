class User < ActiveRecord::Base
  attr_accessible :email, :name, :role

  has_many :provas, :dependent => :destroy
end
