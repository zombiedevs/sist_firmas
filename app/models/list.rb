class List < ActiveRecord::Base
  attr_accessible :numero, :rol_id
  belongs_to :rols
end
