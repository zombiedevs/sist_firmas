class Fund < ActiveRecord::Base
  attr_accessible :nombre
  has_many :requests
  has_many :principals
end
