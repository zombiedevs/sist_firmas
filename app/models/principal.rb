class Principal < ActiveRecord::Base
  attr_accessible :fund_id, :lista, :request_type_id
  belongs_to :fund
  belongs_to :request_type
end
