class Rol < ActiveRecord::Base
  attr_accessible :nombre
  has_many :lists
  has_and_belongs_to_many :users
end
